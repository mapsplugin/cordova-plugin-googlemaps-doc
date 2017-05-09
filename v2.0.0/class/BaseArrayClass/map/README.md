# baseArrayClass.map()

The map() method has two use case:
- map(fn)
- map(fn, callback)

-----

## map(fn)

Iterate over each element, calling the provided function.
The function is called for each element like: fn(element, index).
Returned values are collected, then return as the method result.

```js

var baseArray = new plugin.google.maps.BaseArrayClass([
  1, 2, 3, 4, 5
]);

var results = baseArray.map(function(element, idx) {
  return element * 2;
});

// results = [2, 4, 6, 8, 10]
console.log(results);
```

-----

## map(fn, callback)

If you want to do something asynchronously, this is useful way.

```js

var baseArray = new plugin.google.maps.BaseArrayClass([
  {lat: 41.79883, lng: 140.75675},
  {lat: 41.799240000000005, lng: 140.75875000000002},
  {lat: 41.797650000000004, lng: 140.75905},
  {lat: 41.79637, lng: 140.76018000000002},
  {lat: 41.79567, lng: 140.75845},
  {lat: 41.794470000000004, lng: 140.75714000000002},
  {lat: 41.795010000000005, lng: 140.75611},
  {lat: 41.79477000000001, lng: 140.75484},
  {lat: 41.79576, lng: 140.75475},
  {lat: 41.796150000000004, lng: 140.75364000000002},
  {lat: 41.79744, lng: 140.75454000000002},
  {lat: 41.79909000000001, lng: 140.75465}
]);

baseArray.map(function(element, cb) {

  map.addMarker({
    "position": element
  }, cb);

}, function(markers) {

  // markers[0] ... markers[n]

});

```
