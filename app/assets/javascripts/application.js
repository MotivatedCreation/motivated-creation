// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var showNavbarMenu = false
var showAuthenticationPopover = false

$(document).on('click', '.alert-button-close', function () {
    $('.overlay').hide();
});

function openAuthenticationPopover() {
    $('#authentication-popover').animate({height: '220px'});
}

function closeAuthenticationPopover() {
    $('#authentication-popover').animate({height: '0'});
}

function openNavbarMenu() {
    $('.container').animate({left: '200px'});
}

function closeNavbarMenu() {
    $('.container').animate({left: '0'});
}

function toggleNavbarMenu()
{
    showNavbarMenu = !showNavbarMenu;
    
    if (showNavbarMenu) {
        openNavbarMenu();
    }
    else {
        closeNavbarMenu();
    }
}

function toggleAuthenticationPopover()
{
    showAuthenticationPopover = !showAuthenticationPopover;
    
    if (showAuthenticationPopover) {
        openAuthenticationPopover();
    }
    else {
        closeAuthenticationPopover();
    }
}