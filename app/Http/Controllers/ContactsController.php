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
  public function index(Request $request)
  {

    if($group_id = $request->group_id){
      $contacts = Contact::where('group_id', $group_id)->orderBy('id', 'desc')->paginate($this->limit, ['*'], 'contact_list');
    }else{
      $contacts = Contact::orderBy('id', 'desc')->paginate($this->limit, ['*'], 'contact_list');
    }
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
    $saveContact = $contact->save();
    if($saveContact){
      return redirect('contacts')->with(['success' => 'Contact Saved!']);
    }
    return redirect()->back()->with(['fail' => 'Contact Doesn\'t Saved!']);
  }

  public function edit($id)
  {
    $contact = Contact::find($id);
    $groups = Group::pluck('name', 'id');
    return view('contacts.edit', compact('groups', 'contact'));
  }

  public function update($id, Request $request)
  {
    $this->validate($request, $this->rules);

    $contact = Contact::find($id);
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

    $contact = Contact::find($id);

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
