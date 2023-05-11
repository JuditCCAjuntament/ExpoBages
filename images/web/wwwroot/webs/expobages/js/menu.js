
$( ".menu-list" ).on( "mouseover", function() {
    $( ".collapsible ").each(function (params) {
        $( this ).css("display","none")
    })
    $( this ).children().each(function () {
        if ($( this ).hasClass("collapsible")) {
            $( this ).css("display","flex") 
        }
    })
})
$(".menu-list").on( "mouseleave",function () {
    $( this ).children().each(
        function () {
            if ($( this ).hasClass("collapsible")) {
                $( this ).css("display","none") 
            }
        }
    )
} )