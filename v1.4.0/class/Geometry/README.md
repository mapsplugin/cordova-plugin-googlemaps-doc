# Encode / decode the path

Paths within the PhoneGap-GoogleMaps-Plugin are often specified as an Array of LatLng objects. However, passing around such an array is often bulky. You may instead use Google's [polyline encoding algorithm](https://developers.google.com/maps/documentation/utilities/polylinealgorithm) to compress a given path, which you can later decompress through decoding.

- encodePath(Array.<LatLng>)<br><br>
The static method encodePath() encodes the given path.

- decodePath(String [, precision])<br><br>
To decode an encoded path, simply call decodePath() passing the method the encoded string.

## Example: encodePath()

```js
var GORYOKAKU_POINTS = [
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
var encodedPath = plugin.google.maps.geometry.encoding.encodePath(GORYOKAKU_POINTS);
alert(encodedPath);
```

## Example: decodePath()

```js
var encodedPolygon = "uyb~FupbzYqAoK|H{@~FaFjCxInFdGkBlEn@|FeEPmA|EaGsDiIUr@_L";
var precision = 5; //option
map.addPolygon({
    'points': plugin.google.maps.geometry.encoding.decodePath(encodedPolygon, precision),
    'strokeColor' : '#AA00FF',
    'strokeWidth': 5,
    'fillColor' : '#880000'
});
```
