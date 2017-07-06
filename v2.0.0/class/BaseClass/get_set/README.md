# baseClass.get() & baseClass.set()

The BaseClass has two useful method: `set()` and `get()`
You can set any value with key, and get it.

```js
var MyApp = function() {
  plugin.google.maps.BaseClass.apply(this);
};
MyApp.prototype = new plugin.google.maps.BaseClass();

// Create an instance of MyApp class.
var app = new MyApp();

app.set("hello", "world");

console.log( app.get("hello") ); // output is `world`
```

## `(key)_changed` event

The benefit of `set()` and `get()` methods are you are able to catch the `(key)_changed` event when you change the value for key.

```js

// Catch the `hello_changed` event.
app.on("hello_changed", function(previousValue, newValue) {
  console.log("---> prevValue = " + previousValue + ", newValue = " + newValue);
});

// And let's change the value.
// output is
//     ---> prevValue = world, newValue = world2
app.on("hello", "world2");
```

This is very useful for monitoring a property.
For example. Since the [Marker](../../Marker/README.md) extends this class, you can monitor the `position` property.

```js

map.addMarker({
  "position": {
    {"lat": 0, "lng": 0}
  },
  "draggable": true
}, function(marker) {

  marker.on("position_changed", function(prevPosition, newPosition) {
    console.log("--> position = " + newPosition);
  });

});

```

The [Map](../../Map/README.md),[Marker](../../Marker/README.md),
[Polyline](../../Polyline/README.md),[Polygon](../../Polygon/README.md),
[Circle](../../Circle/README.md),[TileOverlay](../../TileOverlay/README.md),
[GroundOverlay](../../GroundOverlay/README.md), and [BaseArrayClass](../../BaseArrayClass/README.md) classes extend this class.


## prevent `(key)_changed` event

If you want to prevent `(key)_changed` event, you need to specify `true` for the third argument.
This is useful when the initialize value is `undefined`.

```js

// Catch the `hello_changed` event.
app.on("hello_changed", function(previousValue, newValue) {
  console.log("---> prevValue = " + previousValue + ", newValue = " + newValue);
});

// And let's change the value.
// output is nothing
app.on("hello", "world3", true);
```
