$(document).ready(function () {
    $(window).scroll(function () {
        var scrollTop = $(window).scrollTop();

        //top navigation bar animation canceling-----------//

        $("ul.topnav li a").css("padding-bottom", "30px");
        $("ul.topnav li a").css("margin-top", "30px");
        $("ul.topnav").css("-webkit-box-shadow", "none");
        $(".cart").css("top", "30px");
        $(".brand").css({ "width": "100px", "padding": "20px 80px", "color": "#2A2A2A", "font-size": "35px" });
        $(".dropdown-content").css("background-color", "transparent");


        $(".center").mouseover(function () {
            $(".center").css("color", "grey");
            $(this).css("color", "black");
        });

        $(".center").mouseout(function () {
            $(".center").css("color", "black");
        });
        //1st thumbnail--------------------------------//

        if (scrollTop > 200) {
            $(".landing h1").fadeOut(500);
            $(".topnav").fadeIn(500);

        } else {
            $(".landing h1").fadeIn(200);
        }

        if (scrollTop < 350 || scrollTop > 1000) {
            $("#1 .bike_img").fadeOut(300);
        } else {
            $("#1 .bike_img").fadeIn(300);
            $("#1 .bike_img").css({ "left": 1100 - (Math.sqrt(scrollTop) * 15) });
        }

        if (scrollTop > 400 && scrollTop < 1100) {
            $("#1 .info h1").fadeIn(200);
            $("#1 .info_text").fadeIn(600);
        } else {
            $("#1 .info h1").fadeOut(300);
            $("#1 .info_text").fadeOut(300);
        }

        //2nd thumbnail--------------------------------//

        if (scrollTop > 1250 && scrollTop < 1900) {
            $("#2 .info h1").fadeIn(200);
            $("#2 .info_text").fadeIn(600);
        } else {
            $("#2 .info h1").fadeOut(300);
            $("#2 .info_text").fadeOut(300);
        }

        if (scrollTop < 1200 || scrollTop > 1800) {
            $("#2 .bike_img").fadeOut(300);
        } else {
            $("#2 .bike_img").fadeIn(300);
            $("#2 .bike_img").css({ "left": -1300 + (Math.sqrt(scrollTop) * 20), "top": -150 + (Math.sqrt(scrollTop) * 5) });
        }

        //3rd thumbnail--------------------------------//

        if (scrollTop > 2200) {
            $("#3 .info h1").fadeIn(200);
            $(".contact_form").fadeIn(200);
            $("#3").fadeIn(600);
        } else {
            $("#3 .info h1").fadeOut(300);
            $(".contact_form").fadeOut(200);
            $("#3").fadeOut(300);
        }
    });
});
