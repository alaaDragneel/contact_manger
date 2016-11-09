@extends('layouts.main')

@section('content')
	@if (Session::has('success'))
		<div class="alert alert-success">{{ Session::get('success') }}</div>
	@endif
  <div class="panel panel-default">
	  <div class="panel-heading clearfix">
	  	<div class="pull-left">
			<h4>All Contacts</h4>
		</div>
	  	<div class="pull-right">
            <a href="{{ route('contacts.create') }}" class="btn btn-default">
              <i class="glyphicon glyphicon-plus"></i>
              Add Contact
            </a>
		</div>
	  </div>
    <table class="table table-hover">
	@foreach($contacts as $contact)
	<tr>
        <td class="middle">
          <div class="media">
            <div class="media-left">
              <a href="#">
                <img class="media-object" src="{{ asset($contact->image) }}"  width="100" height="100" alt="...">
              </a>
            </div>
            <div class="media-body">
              <h4 class="media-heading">{{ $contact->name }}</h4>
              <address>
                <strong>{{ $contact->company }}</strong><br>
                {{ $contact->email }}
              </address>
            </div>
          </div>
        </td>
        <td width="100" class="middle">
          <div>
            <a href="{{ route('contacts.edit', ['id' => $contact->id]) }}" class="btn btn-circle btn-default btn-xs" title="Edit">
              <i class="glyphicon glyphicon-edit"></i>
            </a>
						{!! Form::open(['method' => 'DELETE', 'route' => ['contacts.destroy', $contact->id] ]) !!}
            <button type="submit" class="btn btn-circle btn-danger btn-xs" title="Delete">
              <i class="glyphicon glyphicon-remove"></i>
            </a>
						{!! Form::close() !!}
          </div>
        </td>
      </tr>
	@endforeach
    </table>
  </div>

  <div class="text-center">
    <nav>
      {{ $contacts->appends(Request::query())->render() }}
    </nav>
  </div>
@endsection
