:green_heart: This is the latest document.

# panorama.setPosition()

Sets the StreetViewPanorama to a given location.

```js
panorama.setPosition(options);
```

## Options

name           | type                  | description
---------------|-----------------------|---------------------------------------
target         | ILatLng               | Latitude and longitude of the desired location
radius         | number                | (optional) Radius, specified in meters, that defines the area in which to search for a panorama, centered on the given latitude and longitude
source         | `DEFAULT` or `OUTDOOR`| (optional) StreetViewSource specifies the source of panoramas to search
-----------------------------------------------------------------------

```js
panorama.setPosition(panoId);
```

## Parameters

name           | type             | description
---------------|------------------|---------------------------------------
panoId         | string           | Panorama ID of the desired location
-----------------------------------------------------------------------


## Demo code

```html
<div class="map" id="map_canvas" style="height: 250px;"></div>
<div class="map" id="panorama_canvas" style="height: 250px;"></div>
```

```js
var startPos = {lat: 42.345573, lng: -71.098326};
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: startPos,
    zoom: 18
  }
});

var panoramaDiv = document.getElementById("panorama_canvas");
var panorama = plugin.google.maps.StreetView.getPanorama(panoramaDiv, {
  camera: {
    target: startPos
  }
});

var marker = map.addMarker({
  position: startPos,
  draggable: true,
  title: "Drag me!"
});
marker.showInfoWindow();

marker.on(plugin.google.maps.event.MARKER_DRAG_END, function(latLng) {
  panorama.setPosition(latLng, 50);
});
panorama.on(plugin.google.maps.event.PANORAMA_LOCATION_CHANGE, function(location) {
  marker.setPosition(location.latLng);
});
```

![](image.gif)
