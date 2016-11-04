@extends('layouts.main')

@section('content')
  <div class="panel panel-primary">
    <div class="panel-heading">
      <strong>Add Contact</strong>
    </div>
    {!! Form::open(['route' => 'contacts.store', 'files' => true]) !!}
    @include('contacts.form')
    {!! Form::close() !!}
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection
