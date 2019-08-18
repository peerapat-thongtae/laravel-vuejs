<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>@yield('title')</title>
<link rel="stylesheet" href="/css/app.css">
<link rel="stylesheet" href="/css/shopping-grid.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<meta name="csrf-token" content="{{ csrf_token() }}">
<style>
  .masthead {
  height: 250px;
  min-height: 250px;
  background-image: url('https://wallpapercave.com/wp/wp4148907.jpg');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}
</style>
</head>

<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow fixed-top">
  <div class="container">
    <a class="navbar-brand" href="/">Arsenal Databases</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="/">Home
                <span class="sr-only">(current)</span>
              </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/players">Players
          <span class="sr-only">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/fixtures">Fixture</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Standing</a>
        </li>
      </ul>

      <!-- Right Side Of Navbar -->
      <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
    </div>
  </div>
</nav>

<!-- Full Page Image Header with Vertically Centered Content -->
<header class="masthead">
  <div class="container h-100">
    <div class="row h-100 align-items-center">
      
    </div>
  </div>
</header>

<!-- Page Content -->
<div class="container">

  <!-- Page Heading -->
  

  
    @yield('content')
  </div>
  <!-- /.row -->

  <!-- Pagination 
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">1</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">2</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">3</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
    </li>
  </ul>

</div>
-->
<!-- /.container -->

</body>

</html>

