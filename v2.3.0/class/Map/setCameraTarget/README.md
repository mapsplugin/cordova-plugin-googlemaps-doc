:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# map.setCameraTarget()

Set the camera target(latitude/longitude) position.

```
marker.setCameraTarget(position);
```

## Parameters

name           | type     | description
---------------|----------|---------------------------------------
position       | ILatLng  | new camera target
------------------------------------------------------------------

## Demo code

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>Click here</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div, {
  camera: {
    zoom: 15
  }
});
var clickable = true;
var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {
  var GOOGLE = {
    lat: 37.422858,
    lng: -122.085065
  };
  map.setCameraTarget(GOOGLE);
  var marker = map.addMarker({
    position: GOOGLE,
    title: "Google"
  });
  marker.showInfoWindow();
});

```

![](image.gif)
