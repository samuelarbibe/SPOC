$(document).ready(function () {
    $('form').fadeIn(500);

    $('.link').click(function () {

        event.preventDefault();

        newLocation = this.href;

        $('form').fadeOut(500, newpage);

    });

    function newpage() {

        window.location = newLocation;

    }
});

function check() {
    var name = document.getElementById("username").value.length;
    var pass1 = document.getElementById("password1").value;
    var pass2 = document.getElementById("password2").value;
    var age = document.getElementById("age").value;

    if (name < 3 || name > 10) {
        console.warn("false");
        document.getElementById("error").innerText = "Your Username's length needs to be between 3 - 10 characters!";
        document.getElementById("alert").style.display = "block";
        return false;

    }
    if (pass1 != pass2) {
        console.warn("false");
        document.getElementById('error').innerHTML = "The passwords don't match!";
        document.getElementById('alert').style.display = "block";
        return false;

    }

    if (age % 1 != 0) {
        console.warn("false");
        document.getElementById('error').innerHTML = "Your age must be a number ";
        document.getElementById('alert').style.display = "block";
        return false;
    }

    if (age < 9 || age > 100) {
        console.warn("false");
        document.getElementById('error').innerHTML = "Your age must be between 9-100 ";
        document.getElementById('alert').style.display = "block";
        return false;
    }

    return true;
}