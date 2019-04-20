:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# map.setCompassEnabled()

Set true if you want to show the compass button.

```html
<div class="map" id="map_canvas">
  <span class="smallPanel"><button>current: map.compassEnabled = true</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div, {
  controls: {
    compass: true
  },
  camera: {
    bearing: 30
  }
});
map.one(plugin.google.maps.event.MAP_READY, function() {

  var isEnabled = true;
  var button = div.getElementsByTagName('button')[0];
  button.addEventListener('click', function() {
    isEnabled = !isEnabled;
    map.setCompassEnabled(isEnabled);
    button.innerHTML = "current: map.compassEnabled = " + isEnabled;
  });

});
```

![](image.gif)
