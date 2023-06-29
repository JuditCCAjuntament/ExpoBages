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
    <base href="{$portal.urlBase}/" />

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
        {if $dump_string}

            {foreach name=dumps item=item from=$dump_string}
                <div>{$item}</div>

            {/foreach}

        {/if}

        <a href="/expobages" style="cursor: pointer;">
            <div class="main-banner" onclick="window.location.href = '/expobages';">
                <a href="firamanresa.cat"> <img src="{$web_urlImg}/m.png" alt="err"></a>
            </div>
        </a>
        <nav>
            <div class="nav-wrapper">
                <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                <ul class="hide-on-med-and-down">
                    {foreach from=$portal.menu item=menu}
                        {if $menu.publicat < 2}
                            {if $menu.te_fills == 1}
                                <li class="menu-list"><a class="menu-link" {if $menu.url != ""} href="{$menu.url}" 
                                {else}
                                        href="menu/{$menu.id}" {/if}>{$menu.titol}</a>
                                    <div class="collapsible">

                                        {foreach from=$menu.fills item=submenu}
                                            <a class="browser-default" {if $submenu.url != ""} href="{$submenu.url}" 
                                            {else}
                                                href="menu/{$submenu.id}" {/if}>{$submenu.titol}</a>
                                        {/foreach}
                                    </div>
                                </li>

                            {else}
                                <li><a class="menu-link" {if $menu.url != ""} href="{$menu.url}" {else} href="menu/{$menu.id}" {/if}
                                        id="{$menu.titol}">{$menu.titol}</a></li>
                            {/if}
                        {/if}
                    {/foreach}
                </ul>
            </div>
        </nav>
        <ul class="sidenav mobileNavContainer" id="mobile-demo">
            {foreach from=$portal.menu item=menu}
                <li><a class="menu-text" href="{$menu.url}">{$menu.titol}</a>
                    <hr>
                {/foreach}
        </ul>

        <div class="main-section">
            <div class="blur">
                <a href="menu/8893">
                    <div class="box-link box-link1">
                        <h4>Horaris</h4>
                    </div>
                </a>
                <a href="menu/8892">
                    <div class="box-link box-link2">
                        <h4>Mapa</h4>
                    </div>
                </a>
                <a href="menu/8885">
                    <div class="box-link box-link3">
                        <h4>Àrea Expositors</h4>
                    </div>
                </a>
                <a href="/tecnobages">
                    <div class="box-link box-link4">
                        <h4>TecnoBages</h4>
                    </div>
                </a>
            </div>
        </div>
        <div class="paragraf">
            <img src="{$web_urlImg}/minilogo.png" alt="">
            <p>ExpoBages es la fira multisectorial de referencia a la Catalunya Central,<br> on cada any expositors i
                ciutadans es troben al centre de la ciutat per <br>compartir sinergies i apropar el negoci del territori
                al
                centre de la ciutat</p>
        </div>
        <!-- --->
        <div class="slider">
            <div class="carousel carousel-slider">
                {foreach from=$portal.destacats item=destacat }
                    {if $destacat.id >=1781}
                        <a class="carousel-item"><img src="https://web.manresa.cat/media/docs/destacats/{$destacat.imatge}"></a>
                    {/if}
                {/foreach}

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
            <div class="stitle">
                <h2>
                    Com arribar-hi?
                </h2>
            </div>
            <div class="flex-line-break"></div>
            <div class="routesbtndiv">
                <div class="crcontainer">

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
                    <div class="flex-line-break"></div>

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
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2977.76225564986!2d1.8207447752775359!3d41.72564877494665!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a45872c7935ebb%3A0x92b68c86064ef553!2sPasseig%20de%20Pere%20III%2C%203%2C%2008242%20Manresa%2C%20Barcelona!5e0!3m2!1ses!2ses!4v1688018623754!5m2!1ses!2ses"
                        width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <div class="iframe-2">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d382248.78630805836!2d1.6765127286302661!3d41.540697522699354!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e3!4m5!1s0x12a49816718e30e5%3A0x44b0fb3d4f47660a!2sBarcelona!3m2!1d41.3873974!2d2.168568!4m3!3m2!1d41.7257889!2d1.823427!5e0!3m2!1ses!2ses!4v1688018713084!5m2!1ses!2ses"
                        width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <div class="iframe-3">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d382248.78630805836!2d1.6765127286302661!3d41.540697522699354!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e3!4m5!1s0x12a49816718e30e5%3A0x44b0fb3d4f47660a!2sBarcelona!3m2!1d41.3873974!2d2.168568!4m3!3m2!1d41.7257889!2d1.823427!5e0!3m2!1ses!2ses!4v1688018767108!5m2!1ses!2ses"
                        width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <div class="iframe-4">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d381866.25727354456!2d1.6754416957205216!3d41.60537223060853!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e3!4m5!1s0x12a49816718e30e5%3A0x44b0fb3d4f47660a!2sBarcelona!3m2!1d41.3873974!2d2.168568!4m3!3m2!1d41.7257889!2d1.823427!5e0!3m2!1ses!2ses!4v1688019057829!5m2!1ses!2ses"
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
    <script src="{$web_urlJs}/menu.js"></script>
</body>


</html>