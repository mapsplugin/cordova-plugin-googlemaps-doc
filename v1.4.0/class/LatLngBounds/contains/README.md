If you want to know the coordinates are in the bounds,
[LatLngBounds](../README.md).contains() method returns the value as boolean.

Method | Return value | Description
----|------|----
contains([LatLng](../../LatLng/README.md)) | Boolean | Returns `true` if the given lat/lng is in this bounds.

### Example
```js
map.getVisibleRegion(function(latLngBounds) {
  var point = new plugin.google.maps.LatLng(0, 0);
  var isContained = latLngBounds.contains(point);
  alert(point.toUrlValue() + " is" + (isContained ? " " : " not ") + " contained in this bounds.");
});
```
