$(document).ready(function () {
    var next = document.getElementById('next');
    var previous = document.getElementById('previous');
    var slides = document.querySelectorAll('#slides .slide');
    var currentSlide = 0;
    var slideInterval = setInterval(nextSlide, 13000);

    next.onclick = function () {
        //pauseSlideshow();
        nextSlide();
    }
    previous.onclick = function () {
        //pauseSlideshow();
        previousSlide();
    }

    function nextSlide() {
        goToSlide(currentSlide + 1);
    }

    function previousSlide() {
        goToSlide(currentSlide - 1);
    }

    function buttonSlide(currentId) {
        goToSlide(currentId + 1);
        document.getElementById(currentId).innerHTML = "&#9678";
    }

    function goToSlide(n) {
        slides[currentSlide].className = 'slide';
        document.getElementById(currentSlide).innerHTML = "&#9678";
        currentSlide = (n + slides.length) % slides.length;
        slides[currentSlide].className = 'slide showing';
        document.getElementById(currentSlide).innerHTML = "&#9673";
    }

    $(window).scroll(function () {
        var scrollTop = $(window).scrollTop();
        if (scrollTop > 950) {
            $("ul.topnav").css("background-color", "white");
            $("ul.topnav li a").css("color", "#808080");
            $(".cart").css({ "background-image": "url(Images/cart.JPG)", "opacity": "0.7", "color": "#808080" });
        } else {
            $("ul.topnav").css("background-color", "transparent");
            $("ul.topnav li a").css("color", "white");
            $(".cart").css({ "background-image": "url(Images/Cart_White.PNG)", "opacity": "1", "color": "white" });
            $(".brand").css({ "width": "100px", "padding": "20px 80px", "color": "white", "font-size": "35px" });
        }
    });
});

$(document).ready(function () {
    $("#filter_table").css('display', 'none');

    setInterval(function () {
        $("#top_img img").css('filter', 'blur(0px)');
    }, 200);

});

function toggle() {
    var x = document.getElementById("filter_table");

    if (x.style.display == 'none') {
        document.getElementById("filters").style.height = "1700px";
        document.getElementById("icon").innerHTML = "&#9650";
        $("#filter_table").fadeIn(600);
        $(".filters").css("border", "1px solid #f1f1f1");

    }
    else {
        $("#filter_table").fadeOut(600);
        document.getElementById("filters").style.height = "0px";
        document.getElementById("icon").innerHTML = "&#9660";
        $(".filters").css("border", "none");
    }

}

function search() {

    var input, filter, ul, li, a, i;
    input = document.getElementById('search');//מה שנקלט מהחיפוש
    filter = input.value.toUpperCase();//הופך את החיפוש לאותיות גדולות
    ul = document.getElementById("products");//מה שצריך להסתיר במקרה וזה לא מתאים לחיפוש
    li = ul.getElementsByTagName('li');//מה שבודקים אם זה מתאים לחיפוש

    // עובר דרך כל המוצרים, ומסתיר את אלה שאותיות החיפוש לא קיימות בהם
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }

}

function division(clicked_id) {
    var cls = clicked_id;

    $('.product').hide();
    $('.' + cls).show();
    $('.search').attr('placeholder', cls);
}

function Filter(clickedId) {

    if ($('#' + clickedId).is(':checked')) {
        $('.product').hide();
        $('.' + clickedId).show();
    } else {
        $('.product').show();
    }
}

$(window).on('resize', function (event) {
    var width = $(window).width();

    if (width < 1500) {
        $(".search").attr("placeholder", "Search");
        $('head').append('<link href="css/ShopSmall.css?ver=3" rel="stylesheet" />');
    }
    else {
        $(".search").attr("placeholder", "Bikes");
        $('link[rel=stylesheet][href*="css/ShopSmall.css?ver=3"]').remove();
    }
});

function myFunction(x) {
    x.classList.toggle("change");
}

$(document).ready(function () {
    $("button").click(function () {
        $(".content_dropdown").toggle();
    });
});

$(document).ready(function () {
    var x = $("#search").val();
    if (x,.length > 0) {
        $("#search").css("background-image", "url(Images/search_icon.png)");
    } else {
        $("#search").css("background-image", "url(Images/search_icon.png)");
    }
});