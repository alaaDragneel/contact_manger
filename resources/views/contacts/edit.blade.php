@extends('layouts.main')

@section('content')
  <div class="panel panel-primary">
    <div class="panel-heading">
      <strong>edit Contact</strong>
    </div>
    {!! Form::model($contact,['route' => ['contacts.update', $contact->id], 'method' => 'PATCH', 'files' => true]) !!}
    @include('contacts.form')
    {!! Form::close() !!}
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection
