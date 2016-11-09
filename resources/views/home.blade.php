@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
         <div class="jumbotron text-center">
             <h1 class="text-capitalize">Hallo, {{ Auth::user()->name }}</h1>
             <p class="lead">
                 Welcome back to manger contact app
             </p>
             <p>
                  <a href="{{ route('contacts.index') }}" class="btn btn-default btn-lg text-capitalize">manage your contact</a>
             </p>
        </div>
    </div>
</div>
@endsection
