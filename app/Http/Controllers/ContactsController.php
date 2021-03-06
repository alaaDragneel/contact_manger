<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Contact;
use App\Group;

class ContactsController extends Controller
{
  private  $limit = 5;
  private  $rules = [
    'name' => ['required', 'min:5'],
    'email' => ['required', 'email'],
    'company' => ['required'],
  ];
  public function __construct()
  {
       $this->middleware('auth');
  }
  public function autocompelete(Request $request)
  {
    if($request->ajax()) {
      $contactSearch = Contact::select(['id', 'name as value'])->where(function($q) use($request) {
        if($term = $request->term) {
          $keyWords = '%'. $term .'%';
          $q->orWhere('name', 'LIKE', $keyWords);
          $q->orWhere('company', 'LIKE', $keyWords);
          $q->orWhere('email', 'LIKE', $keyWords);
        }
      })
      ->orderBy('name', 'asc')
      ->take(5)
      ->get();
      return $contactSearch;
    }
  }
  public function index(Request $request)
  {
    $contacts = Contact::where(function($q) use($request) {
         // fillter by current user
         $q->where('user_id', $request->user()->id);
      if($group_id = $request->group_id) {
        $q->where('group_id', $group_id);
      }

      if($term = $request->term) {
        $keyWords = '%'. $term .'%';
        $q->orWhere('name', 'LIKE', $keyWords);
        $q->orWhere('company', 'LIKE', $keyWords);
        $q->orWhere('email', 'LIKE', $keyWords);
      }
    })
      ->orderBy('id', 'desc')
      ->paginate($this->limit, ['*'], 'contact_list');

    return view('contacts.index', compact('contacts'));
  }

  public function create()
  {
    $groups = Group::pluck('name', 'id');
    return view('contacts.create', compact('groups'));
  }

  public function store(Request $request)
  {
    $this->validate($request, $this->rules);

    $contact = new Contact();
    $contact->name = $request->name;
    $contact->email = $request->email;
    $contact->company = $request->company;
    $contact->phone = $request->phone;
    $contact->address = $request->address;
    $contact->group_id = $request->group;
    if ($request->image) {
          $contact->image = $this->upload($request->image);
        }else {
          $contact->image = 'assets/img/avatar5.png';
        }
    $saveContact = $request->user()->contacts()->save($contact);
    if($saveContact){
      return redirect('contacts')->with(['success' => 'Contact Saved!']);
    }
    return redirect()->back()->with(['fail' => 'Contact Doesn\'t Saved!']);
  }

  public function edit($id)
  {
    $contact = Contact::findOrFail($id);
    $this->authorize('modify', $contact);
    $groups = Group::pluck('name', 'id');
    return view('contacts.edit', compact('groups', 'contact'));
  }

  public function update($id, Request $request)
  {
    $this->validate($request, $this->rules);
    $contact = Contact::findOrFail($id);
    $this->authorize('modify', $contact);
    $contact->name = $request->name;
    $contact->email = $request->email;
    $contact->company = $request->company;
    $contact->phone = $request->phone;
    $contact->group_id = $request->group;
    if ($request->image) {
          $old_img = $contact->image;
          if ($old_img !== $request->image) {
            $this->removeImage($old_img);
            $contact->image = $this->upload($request->image);
          }
        }else {
          $contact->image = 'assets/img/avatar5.png';
        }
    $saveContact = $contact->update();
    if($saveContact){
      return redirect('contacts')->with(['success' => 'Contact Updated!']);
    }
    return redirect()->back()->with(['fail' => 'Contact Doesn\'t Updated!']);
  }

  public function destroy($id, Request $request)
  {
     $contact = Contact::findOrFail($id);
     $this->authorize('modify', $contact);
    $this->removeImage($contact->image);
    $saveContact = $contact->delete();
    if($saveContact){
      return redirect('contacts')->with(['success' => 'Contact Deleted!']);
    }
    return redirect()->back()->with(['fail' => 'Contact Doesn\'t Deleted!']);
  }

  public function upload($file)
  {
   $extension = $file->getClientOriginalExtension();
   $sha1 = sha1($file->getClientOriginalName());
   $filename = date('Y-m-d-h-i-s')."_".$sha1.".".$extension;
   $path = public_path('assets/img/');
   $file->move($path, $filename);
   return 'assets/img/'.$filename;
  }

  public function removeImage($img)
  {
    if (!empty($img)) {
      $file_path = public_path() .'/'. $img;
      if (file_exists($file_path)) {
        unlink($file_path);
      }
    }
  }
}
