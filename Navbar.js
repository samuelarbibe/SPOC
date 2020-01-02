$(document).ready(function () {
    $(window).scroll(function () {
        var scroll = $(window).scrollTop();

        if (scroll > 900) {
            $("ul.topnav").css({ "background": "white" });
            $("ul.topnav li a").css({ "color": "black" });
            $("#white").fadeOut();
            $("#black").fadeIn();
            $(".dropdown-content a").css({ "color": "black" });
        } else {
            $("ul.topnav").css({ "background-color": "transparent", "color": "white", "background": "linear-gradient(rgba(0, 0, 0, 0.8),rgba(0, 0, 0, 0.7),rgba(0, 0, 0, 0.6),rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.4),rgba(0, 0, 0, 0.3),rgba(0, 0, 0, 0.2),rgba(0, 0, 0, 0.1),rgba(0, 0, 0, 0.05),rgba(0, 0, 0, 0.02),rgba(0, 0, 0, 0.01))" });
            $("ul.topnav li a").css({ "color": "white" });
            $("#black").fadeOut();
            $("#white").fadeIn();
            $(".dropdown-content a").css({ "color": "white" });
        }
    });
});