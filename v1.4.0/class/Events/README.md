JavaScript within the browser is _event driven_, meaning that JavaScript responds to interactions by generating events, and expects a program to listen to interesting events.
The cordova-googlemaps-plugin fires several events when the status of the map is changed.
You can catch these events with **addEventListener**.

There are several events.
* MAP_READY
* MAP_CLICK
* MAP_LONG_CLICK
* MY_LOCATION_CHANGE(Android)
* MY_LOCATION_BUTTON_CLICK
* CAMERA_CHANGE
* MAP_LOADED(Android)
* MAP_WILL_MOVE(iOS)

### MAP_READY event

The cordova-googlemaps-plugin fires once MAP_READY event when the map has fully initialized. After the event, you can safely make calls to the cordova-googlemaps-plugin function.

```js
var map = plugin.google.maps.Map.getMap();
map.addEventListener(plugin.google.maps.event.MAP_READY, function(map) {
  //The map is initialized.
});
```

### MAP_CLICK event

MAP_CLICK event is fired when you tap on a map. The location of the tap position is passed as the argument.

```js
map.on(plugin.google.maps.event.MAP_CLICK, function(latLng) {
  alert("Map is clicked.\n" + latLng.toUrlValue());
});
```

### MAP_LONG_CLICK event

MAP_LONG_CLICK event is fired when you press and hold a while longer on a map. The location of the position is passed as the argument.

```js
map.on(plugin.google.maps.event.MAP_LONG_CLICK, function(latLng) {
  alert("Map is long clicked.\n" + latLng.toUrlValue());
});
```
