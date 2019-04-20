:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# groundOverlay.setZIndex()

Change the bounds of the ground overlay.

```html
<div id="map_canvas"></div>
```

```js
var regions = [
  {
    "bounds": [
      {"lat": 41.144877, "lng": 138.066162},
      {"lat": 45.738532, "lng": 147.092896}
    ],
    "url": "../images/hokkaido-hokkaido-1001_1.png"
  },
  {
    "bounds": [
      {"lat": 43.252673, "lng": 144.749877},
      {"lat": 45.698391, "lng": 149.554238}
    ],
    "url": "../images/hokkaido-hoppou-1001_1.png"
  },
  {
    "bounds": [
      {"lat": 41.640700, "lng": 142.146678},
      {"lat": 40.113827, "lng": 139.386590}
    ],
    "url": "../images/aomori-aomori-2.png"
  }
];

var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv);

map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

  var mvcArray = new plugin.google.maps.BaseArrayClass();
  var latLngBounds = new plugin.google.maps.LatLngBounds();

  regions.forEach(function(region, idx) {
    region.bounds.forEach(function(position) {
      latLngBounds.extend(position);
    });

    // Add ground overlay
    map.addGroundOverlay({
      'url': region.url,
      'bounds': region.bounds,
      'opacity': 0.5,
      'zIndex': idx,
      'clickable': true
    }, function(groundOverlay) {
      mvcArray.push(groundOverlay);
      groundOverlay.on(plugin.google.maps.event.GROUND_OVERLAY_CLICK, onClick);
    });

  });

  mvcArray.on("insert_at", function() {
    if (mvcArray.getLength() === regions.length) {
      map.moveCamera({
        target: latLngBounds
      });
    }
  });

  function onClick() {
    var clickedOverlay = this;

    mvcArray.forEach(function(groundOverlay, idx) {
      if (clickedOverlay.getHashCode() === groundOverlay.getHashCode()) {
        groundOverlay.setZIndex(1);
        groundOverlay.setOpacity(1);
      } else {
        groundOverlay.setZIndex(0);
        groundOverlay.setOpacity(0.5);
      }
    });
  }

});
```

![](image.gif)
