$(document).ready(function () {
    $(window).scroll(function () {
        var scrollTop = $(window).scrollTop();
        if (scrollTop > 950) {

            $("ul.topnav li a").css("margin-top", "20px");
            $("ul.topnav li a").css("padding-bottom", "20px");
            $("ul.topnav").css("-webkit-box-shadow", "0px 5px 30px 1px rgba(190,190,190,0.2)");
            $(".cart").css("top", "15px");
            $(".brand").css({ "width": "70px", "padding": "16px 50px", "color": "#2A2A2A", "font-size": "25px" });
            $(".dropdown-content").css("background-color", "#313131");
        } else {
            $("ul.topnav li a").css("padding-bottom", "30px");
            $("ul.topnav li a").css("margin-top", "30px");
            $("ul.topnav").css("-webkit-box-shadow", "none");
            $(".cart").css("top", "25px");
            $(".brand").css({ "width": "100px", "padding": "20px 80px", "color": "#2A2A2A", "font-size": "35px" });
            $(".dropdown-content").css("background-color", "transparent");
        }

        $(".center").mouseover(function () {
            if (scrollTop < 950) {
                $(".center").css("color", "grey");
                $(this).css("color", "white");
            } else {
                $(".center").css("color", "grey");
                $(this).css("color", "black");
            }
        });

        $(".center").mouseout(function () {
            if (scrollTop < 950) {
                $(".center").css("color", "white");
            } else {
                $(".center").css("color", "black");
            }
        });
    });
});