:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# map.setMapTypeId()

You can change map type using `map.setMapTypeId()`.
Available map types are `ROADMAP`, `SATELLITE`, `HYBRID`, `TERRAIN` and `NONE`.

```html
<div class="map" id="map_canvas">
  <select>
    <option value="ROADMAP">ROADMAP</option>
    <option value="SATELLITE">SATELLITE</option>
    <option value="HYBRID">HYBRID</option>
    <option value="TERRAIN">TERRAIN</option>
    <option value="NONE">NONE</option>
  </select>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);
map.one(plugin.google.maps.event.MAP_READY, function() {

  var select = div.getElementsByTagName('select')[0];
  select.addEventListener('change', function() {
    map.setMapTypeId(plugin.google.maps.MapTypeId[this.value]);
  });

});
```

![](image.gif)
