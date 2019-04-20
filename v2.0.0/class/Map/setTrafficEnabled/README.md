:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# map.setTrafficEnabled()

Set true if you want to show the traffic layer.

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>current: map.trafficLayer = false</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div, {
  camera: {
    target: {
      lat: 37.422858,
      lng: -122.085065
    },
    zoom: 10
  }
});
map.one(plugin.google.maps.event.MAP_READY, function() {

  var isEnabled = false;
  var button = div.getElementsByTagName('button')[0];
  button.addEventListener('click', function() {
    isEnabled = !isEnabled;
    map.setTrafficEnabled(isEnabled);
    button.innerHTML = "current: map.trafficLayer = " + isEnabled;
  });

});
```

![](image.gif)
