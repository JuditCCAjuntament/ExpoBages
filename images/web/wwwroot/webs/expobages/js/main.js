
$(document).ready(function () {
    $('.sidenav').sidenav();
    $('.collapsible').css("display","none")
});


$(document).ready(function () {
    $('.carousel.carousel-slider').carousel(
        {
            fullWidth: true,
            indicators: true
        }
    );
});

$(document).ready(function () {
    $(".hora").prepend("<br>")
});

$(".routes-link").click(
    function () {
        $(".buttons").children().each(
            function () {
                $(this).removeClass("selected");
            }
        )
        $(this).addClass("selected");
        switch ($(this).children().first().text()) {
            case "Transport Privat":
                $(" .iframe-1 ").css("display", "block")
                $(" .iframe-2, .iframe-3, .iframe-4 ").css("display", "none")
                break;
            case "Renfe R4":
                $(" .iframe-2 ").css("display", "block")
                $(" .iframe-1, .iframe-3, .iframe-4 ").css("display", "none")
                break;
            case "FGC R5,R50":
                $(" .iframe-3 ").css("display", "block")
                $(" .iframe-2, .iframe-1, .iframe-4 ").css("display", "none")
                break;
            case "Autobús":
                $(" .iframe-4 ").css("display", "block")
                $(" .iframe-2, .iframe-3, .iframe-1 ").css("display", "none")
                break;

            default:
                break;
        }
    }
);
