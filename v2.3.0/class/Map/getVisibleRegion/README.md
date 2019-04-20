:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# map.getVisibleRegion()

```
var visibleRegion = map.getVisibleRegion();
```

The visible region contains these properties:

- nearLeft, nearRight, farLeft, and farRight
- latLngBounds


## nearLeft, nearRight, farLeft, and farRight

These are the latitude/longitude pairs of left-top(nearLeft), left-right(nearRight), left-bottom(farLeft) and right-bottom(farRight) of the current viewport.

## latLngBounds

A LatLngBounds that contains the above four points. Not equals with the four points when the map is rotated or has tilt.

--------------------------------------------------------

## Demo code

In the below example, the blue rectangle represents the visible region, the red rectangle represents the viewport region.

This polygon can be a trapezoid instead of a rectangle, because a camera can have tilt. If the camera is directly over the center of the camera, the shape is rectangular, but if the camera is tilted, the shape will appear to be a trapezoid whose smallest side is closest to the point of view.


```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div, {
  camera: {
    target: {
      lat: 37.422858,
      lng: -122.085065
    },
    zoom: 15,
    bearing: 150
  }
});

var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {

  // Get the visible region
  var visibleRegion = map.getVisibleRegion();

  // Draw a red polygon that represents viewport
  map.addPolygon({
    'points': [
      visibleRegion.nearLeft,
      visibleRegion.nearRight,
      visibleRegion.farRight,
      visibleRegion.farLeft
    ],
    'strokeColor' : 'red',
    'strokeWidth': 2,
    'fillColor': 'rgba(255, 0, 0, 0.5)'
  });
  setTimeout(function() {
    map.animateCameraZoomOut();
  }, 1000);

  // Draw a blue box that represents latLngBounds
  map.addPolygon({
    'points': [
      visibleRegion.northeast,
      {lat: visibleRegion.northeast.lat, lng: visibleRegion.southwest.lng},
      visibleRegion.southwest,
      {lat: visibleRegion.southwest.lat, lng: visibleRegion.northeast.lng}
    ],
    'strokeColor' : 'blue',
    'strokeWidth': 2,
    'fillColor': 'transparent'
  });


});
```

![](image.gif)
