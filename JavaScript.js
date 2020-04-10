window.onscroll = function (){ myFunction() };

var navbar = document.getElementsByClassName("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
    if (window.pageYOffset >=1) {
        navbar.addClass('sticky')
    }
    else {
        navbar.removeClass('sticky')
    }

}