:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# map.setCompassEnabled()

Set true if you want to show the compass button.

```
marker.setCompassEnabled(flag);
```

## Parameters

name           | type     | description
---------------|----------|---------------------------------------
flag           | boolean  | `false`: disabled, `true`: enabled
------------------------------------------------------------------

## Demo code


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

var isEnabled = true;
var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {
  isEnabled = !isEnabled;
  map.setCompassEnabled(isEnabled);
  button.innerHTML = "current: map.compassEnabled = " + isEnabled;
});

```

![](image.gif)
