// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap.min.js
//= require masonry/jquery.masonry
//= require masonry/jquery.event-drag
//= require masonry/jquery.imagesloaded.min
//= require masonry/jquery.infinitescroll.min
//= require masonry/modernizr-transitions
//= require_tree . 


// Bootstrap dropdowns

$(function(){
  $('[data-toggle="dropdown"]').parent().removeClass('open'); // this works
  $('#click').click(function(e){
      e.stopPropagation();
  });
});

// Masonry js code

$(document).ready(function() {
var container = $('#masonry-container');

	container.imagesLoaded( function () {
		container.masonry({
		  itemSelector: '.box',
		  // set columnWidth a fraction of the container width
		  columnWidth: 100, 
		  isFitWidth: true,
		});

	});
		
});


