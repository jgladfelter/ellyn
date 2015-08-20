$(function () {
	var $coords = $('.coords'),
		$map = $('#map'),
    locations = [];

	$.each($coords, function () {
		var location = {};
    location.latitude = $(this).data('lat');
    location.longitude = $(this).data('lon');
    locations.push(location);
	});

	var map;
	function initMap() {
  	map = new google.maps.Map(document.getElementById('map'), {
    	center: {lat: 41.9200, lng: -87.650},
    	zoom: 12
  	});
    console.log(locations);
    $.each(locations, function () {
      marker = new google.maps.Marker({
        map: map,
        draggable: true,
        animation: google.maps.Animation.DROP,
        position: {lat: this.latitude, lng: this.longitude}
      });
    });
    
  	
	}
	initMap();
  var mapSize = ($('#results').height()-50)
  if (mapSize > 300) {
    $map.height(mapSize);  
  } else {
    $map.height(300);
  }
  
});