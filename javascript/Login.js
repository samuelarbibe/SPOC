function check() {
    var username = document.getElementById("username").value.length;

    if (username > 3 && username < 10) {
        console.warn("true");
        return true;
    }
    console.warn("false");
    document.getElementById("error").innerText = "Your Username's length needs to be between 3 - 10 characters!";
    document.getElementById("error").style.display = "block";
    return false;
}

$(window).on('resize', function (event) {
    var width = $(window).width();

    if (width < 1700) {
        $(".img_bike").fadeOut();
    }
    else if (width > 1000) {
        $(".img_bike").fadeIn();
    }
});


$(document).ready(function () {

    $("form").fadeIn(500);


    $('.link').click(function () {

        event.preventDefault();

        newLocation = this.href;

        $('form').fadeOut(200, newpage);

    });

    function newpage() {

        window.location = newLocation;

    }
});