<?php  
    function ordenarFecha($fechaIn){
        $marca=strtotime($fechaIn);
        $fechaOut=date("d-m-Y",$marca);
        return $fechaOut;
    }

    function comprobar_usuario(){
        session_start();
        if (isset($_SESSION["sesiUser"])){
            return $_SESSION["sesiUser"];

        }elseif (isset($_COOKIE["cookiUser"])){
            $galleta = $_COOKIE["cookiUser"];            
            session_decode($galleta);
            return $_SESSION["sesiUser"];

        }else{
            return (-1);
        }
    }
    
    function encriptar($psswrd){
        $enc=md5($psswrd);
        return $enc;
    }

    function pintar_menu_index($id){
        if($id==0){//Admin
            echo"<header class='mb-5'>
                <nav class='navbar navbar-expand-lg bg-body-tertiary'>
                    <div class='container-fluid'>
                        <div class='icono col-1 navbar-brand d-flex justify-content-center'>
                            <a href='./index.php' class='nOver'>
                                <img src='./assets/logor.png' alt='Icono de personal'>
                            </a>
                        </div>
                        <button class='navbar-toggler' type='button' data-bs-toggle='collapse' data-bs-target='#navbarSupportedContent' aria-controls='navbarSupportedContent' aria-expanded='false' aria-label='Toggle navigation'>
                            <span class='navbar-toggler-icon'></span>
                        </button>
                        <div class='collapse navbar-collapse' id='navbarSupportedContent'>
                            <ul class='navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-around'>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='./controladores/controlador_proyectos.php'>Proyectos</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='./controladores/controlador_campos.php'>Campos</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='./controladores/controlador_socios.php'>Socios</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='./controladores/controlador_muestras.php'>Muestras</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='./controladores/controlador_comentarios.php'>Comentarios</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='./controladores/controlador_cerrar_sesion.php'>Salir</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <main>
            <div id='subir'>		
                <a href='#' class='ea'><i class='fa-solid fa-angle-up fs-2'></i></a>	
            </div>";
        }elseif($id>0){//Es socio
            echo"<header class='mb-5'>
                <nav class='navbar navbar-expand-lg bg-body-tertiary'>
                    <div class='container-fluid'>
                        <div class='icono col-1 navbar-brand d-flex justify-content-center'>
                            <a href='./index.php' class='nOver'>
                                <img src='./assets/logor.png' alt='Icono de personal'>
                            </a>
                        </div>
                        <button class='navbar-toggler' type='button' data-bs-toggle='collapse' data-bs-target='#navbarSupportedContent' aria-controls='navbarSupportedContent' aria-expanded='false' aria-label='Toggle navigation'>
                            <span class='navbar-toggler-icon'></span>
                        </button>
                        <div class='collapse navbar-collapse' id='navbarSupportedContent'>
                            <ul class='navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-around'>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='./controladores/controlador_proyectos.php'>Proyectos</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='./controladores/controlador_campos.php'>Campos</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='./controladores/controlador_cerrar_sesion.php'>Salir</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <main>
            <div id='subir'>		
                <a href='#' class='ea'><i class='fa-solid fa-angle-up fs-2'></i></a>	
            </div>";
        }elseif($id==(-1)){//No está logueado
            echo"<header class='mb-5'>
                <nav class='navbar navbar-expand-lg bg-body-tertiary'>
                    <div class='container-fluid'>
                        <div class='icono col-1 navbar-brand d-flex justify-content-center'>
                            <a href='./index.php' class='nOver'>
                                <img src='./assets/logor.png' alt='Icono de personal'>
                            </a>
                        </div>
                        <button class='navbar-toggler' type='button' data-bs-toggle='collapse' data-bs-target='#navbarSupportedContent' aria-controls='navbarSupportedContent' aria-expanded='false' aria-label='Toggle navigation'>
                            <span class='navbar-toggler-icon'></span>
                        </button>
                        <div class='collapse navbar-collapse' id='navbarSupportedContent'>
                            <ul class='navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-around'>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='./index.php'>Inicio</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='./controladores/controlador_proyectos.php'>Proyectos</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='./controladores/controlador_campos.php'>Campos</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='./vistas/acceso.php'>Acceder</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <main>
            <div id='subir'>		
                <a href='#' class='ea'><i class='fa-solid fa-angle-up fs-2'></i></a>	
            </div>";
        }
    }

    function pintar_menu($id){
        if($id==0){//Admin
            echo"<header class='mb-5'>
                <nav class='navbar navbar-expand-lg bg-body-tertiary'>
                    <div class='container-fluid'>
                        <div class='icono col-1 navbar-brand d-flex justify-content-center'>
                            <a href='../index.php' class='nOver'>
                                <img src='../assets/logor.png' alt='Icono de personal'>
                            </a>
                        </div>
                        <button class='navbar-toggler' type='button' data-bs-toggle='collapse' data-bs-target='#navbarSupportedContent' aria-controls='navbarSupportedContent' aria-expanded='false' aria-label='Toggle navigation'>
                            <span class='navbar-toggler-icon'></span>
                        </button>
                        <div class='collapse navbar-collapse' id='navbarSupportedContent'>
                            <ul class='navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-around'>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='../controladores/controlador_proyectos.php'>Proyectos</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='../controladores/controlador_campos.php'>Campos</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='../controladores/controlador_socios.php'>Socios</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='../controladores/controlador_muestras.php'>Muestras</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='../controladores/controlador_comentarios.php'>Comentarios</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='../controladores/controlador_cerrar_sesion.php'>Salir</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <main>
            <div id='subir'>		
                <a href='#' class='ea'><i class='fa-solid fa-angle-up fs-2'></i></a>	
            </div>";
        }elseif($id>0){//Es socio
            echo"<header class='mb-5'>
                <nav class='navbar navbar-expand-lg bg-body-tertiary'>
                    <div class='container-fluid'>
                        <div class='icono col-1 navbar-brand d-flex justify-content-center'>
                            <a href='../index.php' class='nOver'>
                                <img src='../assets/logor.png' alt='Icono de personal'>
                            </a>
                        </div>
                        <button class='navbar-toggler' type='button' data-bs-toggle='collapse' data-bs-target='#navbarSupportedContent' aria-controls='navbarSupportedContent' aria-expanded='false' aria-label='Toggle navigation'>
                            <span class='navbar-toggler-icon'></span>
                        </button>
                        <div class='collapse navbar-collapse' id='navbarSupportedContent'>
                            <ul class='navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-around'>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='../controladores/controlador_proyectos.php'>Proyectos</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='../controladores/controlador_campos.php'>Campos</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='../controladores/controlador_cerrar_sesion.php'>Salir</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <main>
            <div id='subir'>		
                <a href='#' class='ea'><i class='fa-solid fa-angle-up fs-2'></i></a>	
            </div>";
        }elseif($id==(-1)){//No está logueado
            echo"<header class='mb-5'>
                <nav class='navbar navbar-expand-lg bg-body-tertiary'>
                    <div class='container-fluid'>
                        <div class='icono col-1 navbar-brand d-flex justify-content-center'>
                            <a href='../index.php' class='nOver'>
                                <img src='../assets/logor.png' alt='Icono de personal'>
                            </a>
                        </div>
                        <button class='navbar-toggler' type='button' data-bs-toggle='collapse' data-bs-target='#navbarSupportedContent' aria-controls='navbarSupportedContent' aria-expanded='false' aria-label='Toggle navigation'>
                            <span class='navbar-toggler-icon'></span>
                        </button>
                        <div class='collapse navbar-collapse' id='navbarSupportedContent'>
                            <ul class='navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-around'>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='../index.php'>Inicio</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='../controladores/controlador_proyectos.php'>Proyectos</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='../controladores/controlador_campos.php'>Campos</a>
                                </li>
                                <li class='nav-item'>
                                    <a class='nav-link active' aria-current='page' href='../vistas/acceso.php'>Acceder</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <main>
            <div id='subir'>		
                <a href='#' class='ea'><i class='fa-solid fa-angle-up fs-2'></i></a>	
            </div>";
        }
    }

    function pintar_footer(){
        echo"</main>
        <footer>
            <div id='loc'>
                <div>
                    <ul class='contacto'>     
                        <li><span class='fa-solid fa-phone'></span> +32 654.123.123</li>
                        <li>
                            <a href='https://www.google.com/intl/es/gmail/about/' target='_blank'><span class='fa-regular fa-envelope'></span></a>
                            estrellasaezribera@gmail.com
                        </li>  
                        <li>   
                            <span>@2024EstrellaLSR</span>
                        </li>
                    </ul>
                </div>
                <div>
                    <iframe src='https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3179.0735552007054!2d-3.6015063!3d37.1747229!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd71fcbe20b6b829%3A0x75033977e293305d!2sEscuela%20de%20Arte%20y%20Superior%20de%20Dise%C3%B1o%20Jos%C3%A9%20Val%20del%20Omar%20de%20Granada!5e0!3m2!1ses!2ses!4v1733764639631!5m2!1ses!2ses' width='300' height='100' style='border:0;' allowfullscreen='' loading='lazy' referrerpolicy='no-referrer-when-downgrade'></iframe>
                </div>
            </div>
            <div id='redes'>
                <ul class='enlaces'>
                    <li><a href='https://web.telegram.org/k/' target='_blank'><span class='fa-brands fa-telegram'></span></a></li>
                    <li><a href='https://www.facebook.com/' target='_blank'><span class='fa-brands fa-facebook'></span></a></li>
                    <li><a href='https://www.youtube.com/' target='_blank'><span class='fa-brands fa-youtube'></span></a></li>
                    <li><a href='https://www.tiktok.com/es/' target='_blank'><span class='fa-brands fa-tiktok'></span></a></li>
                    <li><a href='https://www.reddit.com/?rdt=32970' target='_blank'><span class='fa-brands fa-reddit-alien'></span></a></li>
                    <li><a href='https://twitter.com/?lang=es' target='_blank'><span class='fa-brands fa-x-twitter'></span></a></li>
                    <li><a href='https://web.whatsapp.com/' target='_blank'><span class='fa-brands fa-whatsapp'></span></a></li>
                    <li><a href='https://www.instagram.com/' target='_blank'><span class='fa-brands fa-instagram'></span></a></li>
                    <li><a href='https://snapchat.com/es' target='_blank'><span class='fa-brands fa-snapchat'></span></a></li>
                </ul>
            </div>
        </footer>
        <script src='https://kit.fontawesome.com/f1a9439f03.js' crossorigin='anonymous'></script>
        <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js' integrity='sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL' crossorigin='anonymous'></script>
    </body>
    </html>";
    }


?>