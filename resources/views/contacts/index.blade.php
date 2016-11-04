@extends('layouts.main')

@section('content')
	@if (Session::has('success'))
		<div class="alert alert-success">{{ Session::get('success') }}</div>
	@endif
  <div class="panel panel-default">
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
