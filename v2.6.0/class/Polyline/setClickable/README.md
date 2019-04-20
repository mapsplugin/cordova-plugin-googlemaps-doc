:green_heart: This is the latest document.

# polyline.setClickable()

Enables or disables click events for this polyline.

```js
polygon.setClickable(flag);
```


## Parameters

name           | type          | description
---------------|---------------|---------------------------------------
flag           | boolean       | `true`: clickable, `false`: non-clickable
-----------------------------------------------------------------------

## Demo code

```html
<div  id="map_canvas">
  <span class="smallPanel"><input type="checkbox" id="toggleCheckbox" checked="checked">polyline.setClickable(true)</span>
</div>
```

```js
var HND_AIR_PORT = {lat: 35.548852, lng: 139.784086};
var SFO_AIR_PORT = {lat: 37.615223, lng: -122.389979};
var HNL_AIR_PORT = {lat: 21.324513, lng: -157.925074};
var AIR_PORTS = [
  HND_AIR_PORT,
  HNL_AIR_PORT,
  SFO_AIR_PORT
];

var mapDiv = document.getElementById("map_canvas");

// Create a map with specified camera bounds
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: AIR_PORTS
  }
});

// Add a polyline
var polyline = map.addPolyline({
  'points': AIR_PORTS,
  'color' : '#AA00FF',
  'width': 20,
  'geodesic': true,
  'clickable': true  // default = false
});

var checkbox = document.getElementById("toggleCheckbox");
checkbox.addEventListener("change", function() {

  // Change the clickable property
  polyline.setClickable(checkbox.checked);

});


polyline.on(plugin.google.maps.event.POLYLINE_CLICK, function(latLng) {
  alert("Polyline is clicked!");
});

```

![](image.gif)
