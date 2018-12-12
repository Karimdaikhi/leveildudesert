import $ from 'jquery';

$(document).ready(function() {
 $(window).on('load', function() {
   $(".loader").delay(3500).fadeOut(500);
 });
});
