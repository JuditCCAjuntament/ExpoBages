//Init materialize sidenav funcrion
$(document).ready(function () {
  $('.sidenav').sidenav();
  if (window.matchMedia('(max-width: 768px)').matches) {
    //Searchbar but the api is wrong
    $(".notMobile").appendTo(".moibleSearch");
  }
});

//Collapsible
$(".collapsibleIndicadors").hover(
  function () {
    $(".collapsibleItems").css("display", "flex");
    let id = this.id;
    $(".collapsibleItems").children().each((index, element) => {
      if ($(element).attr("id") != id) {
        $(element).css("display", "none");
      } else {
        $(element).css("display", "inline");
      }
    });


  }, function () {
  }
);
$(".collapsibleItems").hover(
  function () {
    
  },
  function () {
    $(this).css("display", "none");
  }
);

//Searchbar
$(".searchTrigger").click(
  () => {
    $(".searchContainer").css("display", "flex")
    $(".linksContainer").css("display", "none")
  }
);

//Collapsibles
$(".goBack").click(
  () => {
    $(".searchContainer").css("display", "none")
    $(".linksContainer").css("display", "flex")
  }
);

/////////// Flipbook
//Current displayed page
let currentPage = 0;
//Number of pages
let count = $(".programa").children().length;


function initflipbook() {
  $(".programa").children().each(
    function (index) {
      if (index != 0) {
        $(this).css("display", "none");
      }
    }
  );
}


function getCurrentPage() {
  $(".programa").children().each(
    function (index) {
      let isDisplayed = ($(this).css("display") != "none")
      if (isDisplayed) {
        currentPage = index;
      }

    }
  );
  console.log(currentPage);
}

function nextPage() {
  if (currentPage < count - 1) {
    $(".programa").children().each(
      function (index) {
        console.log("i: " + index + "c: " + currentPage);
        if (index - 1 == currentPage) {
          $(this).fadeIn(
            function () {
            }
          )
        }
        if (index == currentPage) {
          $(this).css("display", "none");
        }
      }
    );
    currentPage++;
  }
}

function prevPage() {
  if (currentPage > 0) {
    $(".programa").children().each(
      function (index) {
        console.log("i: " + index + "c: " + currentPage);
        if (index + 1 == currentPage) {
          $(this).fadeIn(
            function () {
            }
          )
        }
        if (index == currentPage) {
          $(this).css("display", "none");
        }
      }
    );
    currentPage--;
  }
}


initflipbook();