<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <!-- Internet Explorer -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <!-- Contenido adaptable -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Petify - @yield('title')</title>

        <!-- Favicon -->
        <link rel="icon" type="image/png" sizes="56x56" href="images/fav-icon/icon.png">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />

        <!-- Vendor Styles -->

        <link rel="stylesheet" href="{{ asset('vendor/bootstrap/bootstrap.css') }}">
        <link rel="stylesheet" href="{{ asset('vendor/Camera-master/css/camera.css') }}">
        <link rel="stylesheet" href="{{ asset('vendor/owl-carousel/owl.carousel.css') }}">
        <link rel="stylesheet" href="{{ asset('vendor/owl-carousel/owl.theme.css') }}">
        <link rel="stylesheet" href="{{ asset('vendor/WOW-master/css/libs/animate.css') }}">
        <link rel="stylesheet" href="{{ asset('vendor/fancybox/dist/jquery.fancybox.min.css') }}">


        <!-- Style -->
        <link rel="stylesheet" href="{{ asset('fonts/font-awesome/css/font-awesome.min.css') }}">
        <link rel="stylesheet" href="{{ asset('fonts/icon/font/font/flaticon.css') }}">
        <link rel="stylesheet" href="{{ asset('fonts/icon/font/2/flaticon.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ asset('css/style.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ asset('css/responsive.css') }}">
    </head>


    <body>
        <div class="main-page-wrapper home-page-two">
            <div class="html-top-content">

                <!-- Menú -->
                <header class="theme-main-header contact">
                    <div class="container">
                        <div class="menu-wrapper clearfix">
                            <div class="logo float-left"><a href="{{ url('/') }}"><img src="{{ asset('images/logo.png') }}" alt="Logo"></a></div>

                            <ul class="button-group float-right">
                                <li>
                                    <a href="{{ route('index') }}">
                                        <i class="material-icons">home</i> Inicio
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('blog') }}">
                                        <i class="material-icons">feedback</i> Blog
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('contact') }}">
                                        <i class="material-icons">contact_mail</i> Contacto
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('show') }}">
                                        <i class="material-icons">contact_mail</i> Show
                                    </a>
                                </li>

                    @auth
                        <li>
                                <a href="{{ route('logout') }}">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ Auth::user()->name }} <i class="material-icons">exit_to_app</i>
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </a>
                            </li>                      
                    @else
                                <li>
                                    <a href="{{ url('login') }}">
                                        <i class="material-icons">portrait</i> Login
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ url('register') }}">
                                        <i class="material-icons">contact_mail</i> Signup
                                    </a>
                                </li>
                        
                    @endauth
                                        
                            </ul>                       
                        </div> 
                    </div> 
                </header> 
                <!-- /Menú  -->


        @section('content')
        @show

        </div>
    
            <!-- Footer -->
            <footer>
                <div class="container">
                    <div class="footer-data-wrapper">

                        <div class="bottom-footer">
                            <div class="row">
                                <div class="col-lg-6 col-md-7 col-xs-12 text-right pull-right">
                                    
                                    <ul>
                                        <li class="search-form" style="margin-right: 40px;">
                                        <form action="{{ route('search') }}"" method="POST" role="search">
                                            @csrf
                                                <input class="buscar" align="middle" type="search" name="search" placeholder="¿Qué deseas buscar?">
                                                <button type="submit" >
                                                    <i class="material-icons">search</i>
                                                </button>
                                            </form>
                                        </li>   
                                    </ul><br>

                                </div>
                                <div class="col-lg-6 col-md-5 col-xs-12 footer-logo">
                                    <div class="logo"><a href="{{ route('index') }}"><img src="{{ asset('images/logo.png') }}" alt="Logo"></a></div>
                                    <p>Hecho con el &#10084; <strong> hacia los animales</strong></p>
                                </div>
                            </div> 
                        </div> 
                    </div>
                </div> 
            </footer>
            <!-- /Footer -->

            <!-- Top Button -->
            <button class="scroll-top tran3s color-one-bg" style="background: black; color: white;">
                <i class="fa fa-long-arrow-up" aria-hidden="true"></i>
            </button>
            <!-- /Top Button -->

        <script type="text/javascript" src="{{ asset('vendor/jquery.2.2.3.min.js')}}"></script>
        <script type="text/javascript" src="{{ asset('vendor/bootstrap/bootstrap.min.js')}}"></script>
        <script type='text/javascript' src="{{ asset('vendor/Camera-master/scripts/jquery.mobile.customized.min.js')}}"></script>
        <script type='text/javascript' src="{{ asset('vendor/Camera-master/scripts/jquery.easing.1.3.js')}}"></script> 
        <script type='text/javascript' src="{{ asset('vendor/Camera-master/scripts/camera.min.js')}}"></script>
        <script type="text/javascript" src="{{ asset('vendor/WOW-master/dist/wow.min.js')}}"></script>
        <script type="text/javascript" src="{{ asset('vendor/tilt.js/src/tilt.jquery.js')}}"></script>
        <script type="text/javascript" src="{{ asset('vendor/fancybox/dist/jquery.fancybox.min.js')}}"></script>
        <script type="text/javascript" src="{{ asset('vendor/contact-form/validate.js')}}"></script>
        <script type="text/javascript" src="{{ asset('vendor/contact-form/jquery.form.js')}}"></script>
        <script type="text/javascript" src="{{ asset('vendor/owl-carousel/owl.carousel.min.js')}}"></script>
        <script type="text/javascript" src="{{ asset('js/theme.js')}}"></script>

        </div> 
    </body>
</html>