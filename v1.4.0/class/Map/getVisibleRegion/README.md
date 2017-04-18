Return the latitude and longitude coordinates of the corner of the map as [LatLngBounds](../../LatLngBounds/README.md).

### Description
This polygon can be a trapezoid instead of a rectangle, because a camera can have tilt. If the camera is directly over the center of the camera, the shape is rectangular, but if the camera is tilted, the shape will appear to be a trapezoid whose smallest side is closest to the point of view.

---
### Code
```js
map.getVisibleRegion(function(latLngBounds) {
  alert(latLngBounds.northeast.toUrlValue() + ", " + latLngBounds.southwest.toUrlValue());
});
```
