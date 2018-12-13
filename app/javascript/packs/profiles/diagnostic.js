import $ from 'jquery';

// $(document).ready(function() {
 $(window).on('load', function() {
  console.log('!!!! we are in diag on load');
   $(".loader").delay(3700).fadeOut(500);
 });
// });
