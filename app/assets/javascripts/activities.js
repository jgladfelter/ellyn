$(function () {
	var $coords = $('.coords'),
		$map = $('.map');

	$.each($coords, function () {
		console.log($(this).data('lat'));
	});

	var map;
	function initMap() {
  	map = new google.maps.Map(document.getElementById('map'), {
    	center: {lat: 41.9200, lng: -87.650},
    	zoom: 14
  	});

  	marker = new google.maps.Marker({
    	map: map,
    	draggable: true,
    	animation: google.maps.Animation.DROP,
    	position: {lat: 41.9200, lng: -87.650}
  	});
	}
	initMap();
});