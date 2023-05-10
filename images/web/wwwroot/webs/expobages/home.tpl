{assign var="web_title" value="Festa de la llum | Manresa"}

{assign var="imgdir" value="assets/img/"}
{assign var="web_urlMedia" value=$urlMedia}

{assign var="web_description" value=$portal.meta_description}
{assign var="web_canonical" value=$portal.canonical}

{assign var="web_urlCss" value="assets/css/"}
{assign var="web_urlJs" value="assets/js/"}
{assign var="web_urlImg" value="assets/img/"}
{assign var="web_urlHelper" value="`$portal.dir_template`/helpers/"}

{assign var="vars" value=$portal.vars}
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ExpoBages</title>
<link rel="stylesheet" href="{$web_urlCss}/base.css">
<link rel="stylesheet" href="{$web_urlCss}/mainsection.css">
<link rel="stylesheet" href="{$web_urlCss}/slider.css">
<link rel="stylesheet" href="{$web_urlCss}/routes.css">
<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
    href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
    rel="stylesheet">
<link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

</head>

<body>
<div class="main-body">
    <div class="main-banner">
        <img src="{$web_urlImg}/m.png" alt="err">
    </div>
    <nav>
        <div class="nav-wrapper">
            <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            <ul class="pclnav hide-on-med-and-down">
                <li><a class="menu-link" href="">La Fira</a></li>
                <li><a class="menu-link" href="">Àrea expositors</a></li>
                <li><a class="menu-link" href="">Premsa</a></li>
                <li><a class="menu-link" href="">Contacte</a></li>
                <li><a class="menu-link" href="">Com arribar </a></li>

            </ul>
        </div>
    </nav>
    <ul class="sidenav" id="mobile-demo">
        <li><a class="menu-link" href="">La Fira</a></li>
        <li><a class="menu-link" href="">Àrea expositors</a></li>
        <li><a class="menu-link" href="">Premsa</a></li>
        <li><a class="menu-link" href="">Contacte</a></li>
        <li><a class="menu-link" href="">Com arribar </a></li>
    </ul>
    <div class="main-section">
        <div class="blur">
            <div class="box-link box-link1">
                <h4>Horaris</h4>
            </div>
            <div class="box-link box-link2">
                <h4>Mapa</h4>
            </div>
            <div class="flex-line-break"></div>
            <div class="box-link box-link3">
                <h4>Àrea Expositors</h4>
            </div>
            <div class="box-link box-link4">
                <h4>TecnoBages</h4>
            </div>
        </div>
    </div>
    <div class="paragraf">
        <img src="{$web_urlImg}/minilogo.png" alt="">
        <p>ExpoBages es la fira multisectorial de referencia a la Catalunya Central,<br> on cada any expositors i
            ciutadans es troben al centre de la ciutat per <br>compartir sinergies i apropar el negoci del territori
            al
            centre de la ciutat</p>
    </div>

    <div class="slider">

        <div class="carousel carousel-slider">
            <a class="carousel-item"><img src="{$web_urlImg}/1.JPG"></a>
            <a class="carousel-item"><img src="{$web_urlImg}/2.JPG"></a>
            <a class="carousel-item"><img src="{$web_urlImg}/3.JPG"></a>
            <a class="carousel-item"><img src="{$web_urlImg}/4.JPG"></a>
            <a class="carousel-item"><img src="{$web_urlImg}/5.JPG"></a>
            <a class="carousel-item"><img src="{$web_urlImg}/6.JPG"></a>
            <a class="carousel-item"><img src="{$web_urlImg}/7.JPG"></a>
            <a class="carousel-item"><img src="{$web_urlImg}/8.JPG"></a>


        </div>
        <a class="arrow carousel-arrow-left" onclick="$('.carousel').carousel('prev');">
            <span class="material-symbols-outlined">
                arrow_back_ios
            </span>
        </a>
        <a class="arrow carousel-arrow-right" onclick="$('.carousel').carousel('next');">
            <span class="material-symbols-outlined">
                arrow_forward_ios
            </span>
        </a>
    </div>
    <div class="routes">
        <div class="routesbtndiv">
            <div class="crcontainer">

            </div>
            <div class="stitle">
                <h2>
                    Com arribar-hi?
                </h2>
            </div>
            <div class="buttons">
                <a class="routes-link selected">
                    <p>Transport Privat</p>
                    <span class="material-symbols-outlined">
                        directions_car
                    </span>
                </a>
                <a class="routes-link">
                    <p>Renfe R4</p>
                    <span class="material-symbols-outlined">
                        train
                    </span>
                </a>
                <a class="routes-link">
                    <p>FGC R5,R50</p>
                    <span class="material-symbols-outlined">
                        train
                    </span>
                </a>
                <a class="routes-link">
                    <p>Autobús</p>
                    <span class="material-symbols-outlined">
                        directions_bus
                    </span>
                </a>
            </div>
        </div>
        <div class="iframes">
            <div class="iframe-1">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3167.422771329261!2d1.8243527317382315!3d41.728632233836045!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1683178814226!5m2!1ses!2ses"
                    width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div class="iframe-2">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3167.140964375341!2d1.8199784680515891!3d41.73434761537088!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1683178887956!5m2!1ses!2ses"
                    width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div class="iframe-3">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3167.7256456231244!2d1.8261180726775612!3d41.722488868686106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1683178932246!5m2!1ses!2ses"
                    width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div class="iframe-4">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3167.868560250156!2d1.8394986717852457!3d41.71958979651016!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1683178946814!5m2!1ses!2ses"
                    width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
    <footer>
        <div class="xarxes">
            <div class="newsletter">
                <p><strong>Subscriu-te a la newsletter</strong></p>
                <input type="email" name="" id="email" placeholder="&emsp;Introdueix el teu mail aquí!">
                <div class="checkbox-container">
                    <input type="checkbox" name="condicions" id="condicions" class="browser-default">
                    <label for="condicions">He llegit i accepto les condicions de privacitat</label>
                </div>
                <a class="waves-effect waves-light btn newsletterbtn">Envia</a>
            </div>
            <div class="socials">
                <div class="texts">
                    <h6>Segueix-nos:</h6>
                    <div class="icons">
                        <a>
                            <img class="logos" src="{$web_urlImg}/instalogo.png">
                        </a>
                        <a>
                            <img class="logos" src="{$web_urlImg}/twitterlogo.png">

                        </a>
                        <a>
                            <img class="logos" src="{$web_urlImg}/flogo.png">

                        </a>
                        <a>
                            <img class="logos" src="{$web_urlImg}/ytlogo.png">

                        </a>
                    </div>
                </div>
                <div class="texts">
                    <h6>Imatges:</h6>
                    <div class="icons">
                        <a>
                            <span class="material-symbols-outlined">
                                imagesmode
                            </span>
                        </a>

                    </div>
                </div>
            </div>
        </div>
        <div class="fimage">

        </div>
    </footer>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script src="{$web_urlJs}/main.js"></script>
</body>


</html>