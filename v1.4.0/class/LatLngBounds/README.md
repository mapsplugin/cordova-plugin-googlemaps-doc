A LatLngBounds instance represents a rectangle in geographical coordinates, including one that crosses the 180 degrees longitudinal meridian.

```js
var points = [
  new plugin.google.maps.LatLng(41.79883, 140.75675),
  new plugin.google.maps.LatLng(41.799240000000005, 140.75875000000002),
  new plugin.google.maps.LatLng(41.797650000000004, 140.75905),
  new plugin.google.maps.LatLng(41.79637, 140.76018000000002),
  new plugin.google.maps.LatLng(41.79567, 140.75845),
  new plugin.google.maps.LatLng(41.794470000000004, 140.75714000000002),
  new plugin.google.maps.LatLng(41.795010000000005, 140.75611),
  new plugin.google.maps.LatLng(41.79477000000001, 140.75484),
  new plugin.google.maps.LatLng(41.79576, 140.75475),
  new plugin.google.maps.LatLng(41.796150000000004, 140.75364000000002),
  new plugin.google.maps.LatLng(41.79744, 140.75454000000002),
  new plugin.google.maps.LatLng(41.79909000000001, 140.75465),
  new plugin.google.maps.LatLng(41.79883, 140.75673)
];
var latLngBounds = new plugin.google.maps.LatLngBounds(points);

var bounds = {
  north: latLngBounds.northeast.lat,
  south: latLngBounds.southwest.la,
  east: latLngBounds.notheast.lng,
  west: latLngBounds.southwest.lng
};

// Create a rectangle
var rectangle = [
  new plugin.google.maps.LatLng(bounds.north, bounds.west),
  new plugin.google.maps.LatLng(bounds.north, bounds.east),
  new plugin.google.maps.LatLng(bounds.south, bounds.east),
  new plugin.google.maps.LatLng(bounds.south, bounds.west)
];

map.addPolygon({
  'points': rectangle,
  'strokeColor' : '#AA00FF',
  'strokeWidth': 5,
  'fillColor' : '#880000'
});
```

***
# LatLngBounds Class Reference
Method | Return value | Description
----|------|----
toString() | String  | Converts to string.
toUrlValue(precision?:number) | String  | Returns a string of the form "[ \[lat_lo,lng_lo\], \[lat_hi,lng_hi\] ]" for this bounds, where "lo" corresponds to the southwest corner of the bounding box, while "hi" corresponds to the northeast corner of that box.
extend([LatLng](../LatLng/README.md)) | void | Extends this bounds to contain the given point.
[contains](./contains/README.md)([LatLng](../LatLng/README.md)) | Boolean | Returns true if the given lat/lng is in this bounds.
getCenter() | [LatLng](../LatLng/README.md) | Computes the center of this LatLngBounds

Property | Return value | Description
----|------|----
southwest | [LatLng](../LatLng/README.md) | Returns the north-east corner of this bounds.
northeast | [LatLng](../LatLng/README.md) | Returns the south-west corner of this bounds.
