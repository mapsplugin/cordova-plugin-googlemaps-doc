# event : CIRCLE_CLICK

The CIRCLE_CLICK event is fired when you click on the circle.

```html
<div id="map_canvas"></div>
```

```js
var GOOGLE = {"lat" : 37.422858, "lng" : -122.085065};
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: GOOGLE
  }
});

map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

    // Add a circle
    map.addCircle({
        'center': GOOGLE,
        'radius': 300,
        'strokeColor' : '#AA00FF',
        'strokeWidth': 5,
        'fillColor' : '#880000',
        'clickable' : true   // default = false
    }, function(circle) {

        map.moveCamera({
          target: circle.getBounds()
        });

        // Catch the CIRCLE_CLICK event
        circle.on(plugin.google.maps.event.CIRCLE_CLICK, onCircleClick);

    });

});


// The CIRCLE_CLICK event passes to the callback
// with the latLng position which is you clicked.
function onCircleClick(clickLatLng) {

  // The callback is called as the overlay instance.
  var circle = this;

  // You can change the style for instance.
  circle.setFillColor("blue");
  circle.setStrokeColor("green");
  circle.setStrokeWidth(10);

  // If you want to get the map instance,
  // use the circle.getMap() method.
  // The circle.getMap() method returns the map instance
  // which is bound to the circle.
  var map = circle.getMap();
  map.addMarker({
      position: clickLatLng,
      title: "You clicked here on the circle!",
      snippet: clickLatLng.toUrlValue()
  }, function(marker) {
      marker.showInfoWindow();
  });

}
```

![](image.gif)
