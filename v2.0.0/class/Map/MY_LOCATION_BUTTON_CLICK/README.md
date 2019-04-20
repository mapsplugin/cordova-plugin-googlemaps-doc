:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# MY_LOCATION_BUTTON_CLICK event

This event is fired when you tap on the location button.

```html
<div id="map_canvas"></div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div, {
  controls: {
    myLocationButton: true
  }
});
map.one(plugin.google.maps.event.MAP_READY, function() {

  map.on(plugin.google.maps.event.MY_LOCATION_BUTTON_CLICK, function() {
    alert("The my location button is clicked.");
  });
});
```

![](image.gif)
