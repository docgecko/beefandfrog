// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// Corners for HTML
// Site menu
$(document).ready(
	function(){
		$('.menu .tab a').corner("tr 17px").corner("tl 17px");
		$('.menu .tab a:hover').corner("tr 17px").corner("tl 17px");
	}
);

// About us image
$(document).ready(
	function(){
		$('#about .border').corner("10px");
	}
);

// Apartments image
$(document).ready(
	function(){
		$('#apartments .border').corner("10px");
	}
);

// Apartments image
$(document).ready(
	function(){
		$('#apartments .button a').corner("10px");
	}
);