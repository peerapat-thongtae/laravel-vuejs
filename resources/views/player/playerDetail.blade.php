@extends('master')
@section('title','Player Detail')
@section('content')
<head>



<style>

        .image-container {
            position: relative;
            padding-left: 20%;
    
        }

        .image {
            opacity: 1;
            display: block;
            width: 100%;
            height: auto;
            transition: .5s ease;
            backface-visibility: hidden;
        }

        .middle {
            transition: .5s ease;
            opacity: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            text-align: center;
        }

        .image-container:hover .image {
            opacity: 0.3;
        }

        .image-container:hover .middle {
            opacity: 1;
        }
</style>
</head>
            <div class="content">
                

                <div id="app">
                
                    <playerdetail id="{!!$id!!}"></playerdetail>
                </div>
            </div>
        
    
    <script type="text/javascript" src="../js/app.js"></script>

@endsection