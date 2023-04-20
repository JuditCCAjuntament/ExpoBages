{assign var="web_title" value="Festa de la llum | Manresa"}

{assign var="imgdir" value="assets/img/"}
{assign var="web_urlMedia" value=$urlMedia}

{assign var="web_description" value=$portal.meta_description}
{assign var="web_canonical" value=$portal.canonical}

{assign var="web_urlCss" value="assets/css/"}
{assign var="web_urlJs" value="assets/js/"}
{assign var="web_urlImg" value="assets/img/"}
{assign var="web_urlHelper" value="`$portal.dir_template`/helpers/"}
{assign var="google_Icons" value="https://fonts.googleapis.com/icon?family=Material+Icons"}
{assign var="open_sans" value="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400..800"}
{assign var="materialize_framework_css" value="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"}
{assign var="jquery_cdn" value="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"}
{assign var="nuclia_search" value="https://cdn.nuclia.cloud/nuclia-widget.umd.js"}
{assign var="gmap_url" 
    value="https://maps.google.com/maps?width=100%25&amp;height=800&amp;hl=es&amp;q=Manresa,%20Barcelona+()&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"}
{assign var="menus" value="/festadelallum/menu/"}
{assign var="vars" value=$portal.vars}
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$web_title}</title>
    <link rel="icon" type="image/x-icon" href="{$web_urlImg}icon.png">
    <!-- Google icons -->
    <link href="{$google_Icons}" rel="stylesheet">
    <!-- materialize -->
    <link rel="stylesheet" href="{$materialize_framework_css}">
    <!-- JQuery -->
    <script src="{$jquery_cdn}"
        integrity="sha512-STof4xm1wgkfm7heWqFJVn58Hm3EtS31XFaagaa8VMReCXAkQnJZ+jEy8PCC/iT18dFy95WcExNHFTqLyp72eQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <link href="{$open_sans}" rel="stylesheet">
    <!-- Nuclia search cdn -->
    <script src="{$nuclia_search}"></script>

    <link rel="canonical" href="{$web_canonical}" />
    <link rel="stylesheet" href="{$web_urlCss}menu.css">

    <link rel="stylesheet" href="{$web_urlCss}ambit.css">

    <link rel="stylesheet" href="{$web_urlCss}historia.css">

    <link rel="stylesheet" href="{$web_urlCss}contacte.css">

    <link rel="stylesheet" href="{$web_urlCss}recerca.css">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />



</head>

<body>
    <nav>
        <div class="nav-wrapper">
            <div class="mobileHolder">
                <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                <ul class="hide-on-med-and-down">
                    {foreach from=$portal.menu item=menu}
                        {if $menu.publicat < 2}
                            {if $menu.te_fills == 1}
                                {assign var="expand" value=false}
                                {foreach from=$menu.fills item=submenu}
                                    {if $submenu.publicat > 0}
                                        {assign var="expand" value=true}
                                    {/if}
                                {/foreach}
                                {if $expand}
                                    <li><a class="menu-text collapsibleIndicadors" href="{$menu.url}" id="{$menu.titol}">{$menu.titol}<i
                                                class="material-icons">expand_more</i></a></li>
                                {else}
                                    <li><a class="menu-text" href="{$menu.url}" id="{$menu.titol}">{$menu.titol}</a></li>
                                {/if}
                            {else}
                                <li><a class="menu-text" href="{$menu.url}" id="{$menu.titol}">{$menu.titol}</a></li>
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

    <div class="mainBody">
        <div class="collapsibleItems">
            {foreach from=$portal.menu item=menu}
                {if $menu.publicat > 0 && $menu.te_fills}
                    {foreach from=$menu.fills item=submenu}
                        {if $submenu.url == ""}
                            {assign var="link" value="{$menus}{$submenu.id}"}
                        {else}
                            {assign var="link" value="{$submenu.url}"}
                        {/if}
                        {if $submenu.publicat > 0}
                            <a class="menu-text" id="{$menu.titol}" href="{$link}">{$submenu.titol}</a>
                        {/if}
                    {/foreach}
                {/if}
            {/foreach}
        </div>
        <div class="titleDiv">
            <h1 class="title">FESTA DE LA LLUM DE MANRESA</h1>
        </div>
        {if $dump_string}

            {foreach name=dumps item=item from=$dump_string}
                <div>{$item}</div>

            {/foreach}

        {/if}
        <!---div class="programaDiv mbdHalf">
        </div--->
        <div class="ambit" id="ambit">
            <div class="portada">
                <div class="programa">
                    {for $i=1 to 17}
                        <div class="imgcontainer">
                            <img src="{$imgdir}/pagines_programa/{$i}.png"></img>
                        </div>
                    {/for}

                </div>
                <a class="btn-floating waves-effect waves-light btn-large left" onclick=prevPage()>
                    <i class="material-symbols-outlined">
                        chevron_left
                    </i>
                </a>
                <a class="btn-floating waves-effect waves-light btn-large right" onclick=nextPage()>
                    <i class="material-symbols-outlined">
                        chevron_right
                    </i>
                </a>
            </div>
            <div class="enllacosAmbit">
                <h2 class="title">AMBIT DE LA FESTA</h2>
                {foreach from=$portal.menu[1].fills item=menu}
                    <div class="card horizontal">
                        <div class="card-stacked">
                            <div class="card-action">
                                {if $menu.url != ""}
                                    <a href="{$menu.url}"><i
                                            class="material-symbols-outlined">chevron_right</i>{$menu.titol}</a>
                                {else}
                                    <a href="menu/{$menu.id}"><i
                                            class="material-symbols-outlined">chevron_right</i>{$menu.titol}</a>

                                {/if}
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
        <div class="historia" id="historia">
            {assign var="text" value=["Els Origens",
            "Els Programes","Els Administradors","Els Pregons",
             "Lés Musiques","Les Homilies",
             "La meva LLum","Història de l'associació"]}
            <div class="historiaContent">
                <img src="{$imgdir}goigs.jpg"></img>
                <div class="historialinks">
                    <h2 class="title">L'HISTÒRIA DE LA FESTA</h2>
                        {foreach from=$portal.menu[2].fills item=menu}
                            <div class="card horizontal">
                                <div class="card-stacked">
                                    <div class="card-action">




                            {if $menu.url != ""}
                                            <a href="{$menu.url}"><i
                                                    class="material-symbols-outlined">chevron_right</i>{$menu.titol}</a>



                            {else}
                                            <a href="menu/{$menu.id}"><i
                                                    class="material-symbols-outlined">chevron_right</i>{$menu.titol}</a>



                            {/if}
                                    </div>
                                </div>
                            </div>



                        {/foreach}
                    </div>
                </div>
            </div>
            <div class="recerca" id="recerca">
                {assign var="text" value=["Els Origens",
                                                    "Els Programes","Els Administradors","Els Pregons",
                                                     "Lés Musiques","Les Homilies",
                                                     "La meva LLum","Història de l'associació"]}
                <h2 class="title">RECERCA</h2>
                <div class="recercaContent">
                    <div class="recercalinks">



                        {foreach from=$portal.menu[3].fills item=menu}
                            <div class="card horizontal">
                                <div class="card-stacked">
                                    <div class="card-action">



                            {if $menu.url != ""}
                                            <a href="{$menu.url}"><i
                                                    class="material-symbols-outlined">chevron_right</i>{$menu.titol}</a>



                            {else}
                                            <a href="menu/{$menu.id}"><i
                                                    class="material-symbols-outlined">chevron_right</i>{$menu.titol}</a>



                            {/if}
                                    </div>
                                </div>
                            </div>



                        {/foreach}
                    </div>
                </div>

            </div>
        </div>


        <footer>
            <div class="contacteDiv" id="contacte">
                <h1>Contacte</h1>
                <div class="contacteFlex">
                    <div class="dades">
                        <p>Utilitza les següents vies de contacte o omple el formulari.</p>
                        <h3>Correu electrònic</h3>
                        <p><a href="mailto:festadelallum@gmail.com">festadelallum@gmail.com</a></p>
                        <p><a href="http://festadelallum.cat/web/docs/LOPD_AML.pdf"
                                style="text-decoration: underline;">Protecció de dades</a></p>
                    </div>
                    <div class="inputs">

                        <div class="mailName">
                            <input type="text" id="name" name="name" placeholder="Nom">
                            <input type="text" id="mail" name="mail" placeholder="Correu electrònic">
                            <br>
                        </div>
                        <div class="mailName messageDiv">
                            <textarea type="text" id="Missatge" name="message" placeholder="Missatge"></textarea>
                        </div>
                        <div class="sendDiv">
                            <a class="socioeAnchor">Enviar</a>
                            <input type="text" id="sum" name="sum" placeholder="">
                            <p class="random-sum">2+3 =</p>
                        </div>

                    </div>
                </div>
            </div>
            <div class="footerText">
                <div id="credits">
                    <div class="util">
                        <div id="logo_centre">
                            <a href="http://www.manresa.cat/web/menu/5058-manresa-cor-de-catalunya" target="_blank"><img
                                    src="http://www.manresa.cat/img/header/logo_cor.png" alt="Logo cor de Manresa"
                                    style="width:167px;"></a>

                            <img style="margin-left: 30px;"
                                src="http://www.festadelallum.cat/web/images/stories/patrim_festiu_gco.png"></img>
                            <img style="margin-left: 30px; height: 55px;"
                                src="http://www.festadelallum.cat/web/images/stories/llumcat.jpg"></img>

                        </div>
                        <div id="text_peu">
                            <a href="http://www.manresa.cat/web/mapaweb">Mapa web</a> | <a
                                href="http://www.manresa.cat/web/menu/2023-informacio-i-credits">Avís legal</a> | <a
                                href="http://www.manresa.cat/web/menu/8148" target="_blank">Política de privacitat</a> | <a
                                href="http://www.manresa.cat/web/menu/9968">Política de cookies</a> | <a
                                href="http://www.manresa.cat/web/menu/10013" target="_blank">Accessibilitat</a><br>
                            © Ajuntament de Manresa - Pl. Major 1 - 08241 Manresa - <strong>+34 93 878 23 00</strong> -
                            ajt@ajmanresa.cat
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <script src="assets/js/main.js"></script>
        <!-- Materialize Script -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    </body>


    </html>