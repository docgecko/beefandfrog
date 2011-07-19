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

// Apartments buttons
$(document).ready(
	function(){
		$('#apartments .button a').corner("10px");
	}
);

// Apartment button
$(document).ready(
	function(){
		$('#availability .button a').corner("10px");
	}
);

// Apartment image
$(document).ready(
	function(){
		$('#apartment .border').corner("10px");
	}
);

// Flash
$(document).ready(
	function(){
		$('#flash .alert').corner("0.5em");
		$('#flash .notice').corner("0.5em");
	}
);

// Date Picker << Bookings
$(document).ready(
	function (){
		$('#booking_start_at, #booking_end_at').datepicker({
			numberOfMonths: 2,
			showButtonPanel: true,
			beforeShow: customRange,
			dateFormat: 'dd-mm-yy',
			showOn: 'both',
			buttonImage: '/images/calendar.gif',
			buttonImageOnly: true,
			buttonText: 'Show Date Picker'
		});  
	}
);
function customRange(a) {
	var b = new Date();
	var c = new Date(b.getFullYear(), b.getMonth(), b.getDate());
	if (a.id == 'booking_end_date') {
		if ($('.bStartDate').datepicker('getDate') != null) {
			c = $('.bStartDate').datepicker('getDate');
		}
	}
	return {
		minDate: c
	}
}

// Gmaps
$(document).ready(
	function(){
		$('.map').gmap3(
			{ action:'init',
		    options:{
		      center:[38.7169993,-9.1383139],
		      zoom: 11
		    }
		  },
		  { action: 'addMarker',
		    latLng:[38.7169993,-9.1383139]
		  }
		);
	}
);