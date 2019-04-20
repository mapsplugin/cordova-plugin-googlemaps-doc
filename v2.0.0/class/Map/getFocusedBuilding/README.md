:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# map.getFocusedBuilding()

Get the current focused building information.

```html
<div class="map" id="map_canvas">
  <span class="smallPanel" id="indoorInfo"></span>
</div>
```

```js
var indoorInfoLabel = document.getElementById("indoorInfo");
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div, {
  camera: {
    target: {
      lat: 37.422375,
      lng: -122.084207
    },
    zoom: 18
  },
  controls: {
    indoorPicker: true
  }
});
map.one(plugin.google.maps.event.MAP_READY, function() {

  // Get the current focused building programatically.
  map.getFocusedBuilding(onIndoorEvents);

  // or you can listen the INDOOR_BUILDING_FOCUSED and the INDOOR_LEVEL_ACTIVATED events.
  map.on(plugin.google.maps.event.INDOOR_BUILDING_FOCUSED, onIndoorEvents);
  map.on(plugin.google.maps.event.INDOOR_LEVEL_ACTIVATED, onIndoorEvents);

});
function onIndoorEvents(indoorBuilding) {
  var map = this;

  if (!indoorBuilding) {
    indoorInfoLabel.innerText = "Not focused on any building";
    return;
  }

  // then, display the results
  var floors = indoorBuilding.levels;
  indoorInfoLabel.innerText = "current floor: " + indoorBuilding.levels[indoorBuilding.activeLevelIndex].name;

}
```

![](image.gif)
