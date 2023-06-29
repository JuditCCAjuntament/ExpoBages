{assign var="web_title" value="Manresa Ciutat Àgora"}

{assign var="web_canonical" value=$portal.canonical}

{assign var="web_urlImgDefault" value="assets-default/img/"}
{assign var="web_urlMedia" value=$urlMedia}
{assign var="web_urlCss" value="assets/css/"}
{assign var="web_urlJs" value="assets/js/"}
{assign var="web_urlImg" value="assets/img/"}
{assign var="web_urlHelper" value="`$portal.dir_template`/helpers/"}

{assign var="google_Icons" value="https://fonts.googleapis.com/icon?family=Material+Icons"}
{assign var="open_sans" value="https://fonts.googleapis.com/css2?family=Open+Sans:wght@200..900"}
{assign var="materialize_framework_css" value="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"}
{assign var="jquery_cdn" value="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"}
{assign var="nuclia_search" value="https://cdn.nuclia.cloud/nuclia-widget.umd.js"}
{assign var="gmap_url" 
    value="https://maps.google.com/maps?width=100%25&amp;height=800&amp;hl=es&amp;q=Manresa,%20Barcelona+()&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"}
{assign var="menus" value="/festadelallum/menu/"}


{if isset($pagina.titol)}
    {assign var="web_meta_title" value="`$pagina.titol` - `$web_title`"}
{else}
    {assign var="web_meta_title" value="$web_title"}
{/if}


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html" lang="ca">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ExpoBages</title>
    <base href="{$portal.urlBase}/" />

    <link rel="stylesheet" href="{$web_urlCss}base.css">
    <link rel="stylesheet" href="{$web_urlCss}mainsection.css">
    <link rel="stylesheet" href="{$web_urlCss}slider.css">
    <link rel="stylesheet" href="{$web_urlCss}routes.css">
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
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
            <nav>
                <div class="nav-wrapper">
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
                                    <li><a class="menu-link" {if $menu.url != ""} href="{$menu.url}" 
                                    {else} href="menu/{$menu.id}"
                                            {/if} id="{$menu.titol}">{$menu.titol}</a></li>
                                {/if}
                            {/if}
                        {/foreach}
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
            <!-- -->
            {if isset($portal.template_contingut) }
                <h4 class="nomargin">{$pagina.titol}</h4>
                {include file=$portal.template_contingut}
                <div class="endpage-btns">
                    {foreach from=$pagina.contingut.fills item=item}
                        <a class="btn endpage-btn">{$item.titol}</a>
                    {/foreach}
                </div>

            {/if}
            <!-- -->

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
    <script src="{$web_urlJs}/menu.js"></script>
</body>

</html>