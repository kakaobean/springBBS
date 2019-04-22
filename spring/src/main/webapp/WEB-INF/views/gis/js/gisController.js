alert("TEST FUNC");
var map, layer;
var daumMap = new OpenLayers.Layer.Daum(); // 지도관련lib DaumMap
function init() {
	map = new OpenLayers.Map('map');
	layer = new OpenLayers.Layer.OSM("Simple OSM Map");
	map.addLayer(daumMap);
	 map.zoomToExtent(
	            new OpenLayers.Bounds(
	            		195725.7981815, 453422.25002345, 200989.01157, 448844.53255
	            ).transform(map.displayProjection, map.projection)
	        );
}

function test(){
	
	alert("TEST FUNC");
}
