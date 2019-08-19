@extends('master')
@section('title','Player')
@section('content')
            

            <div class="content">
                

                <div id="app">
                <h1 class="my-4">{{ trans('message.Team') }}
                    <small>{{ trans('message.Players') }}</small>
                </h1>
                <div class="row">
    <h3 class="h3"><a href="players/create" class="btn btn-primary">{{ trans('message.AddPlayer') }}</a> </h3>
    </div>
                    <user></user>
                </div>
            </div>
        
    
    <script type="text/javascript" src="js/app.js"></script>

@endsection