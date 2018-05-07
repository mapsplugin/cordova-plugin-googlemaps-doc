# map.setMapTypeId()

You can change map type using `map.setMapTypeId()`.
Available map types are `ROADMAP`, `SATELLITE`, `HYBRID`, `TERRAIN` and `NONE`.

```
marker.setMapTypeId(mapTypeId);
```

## Parameters

name           | type       | description
---------------|------------|---------------------------------------
mapTypeId      | MapTypeId  | new map type id
---------------------------------------------------------------------

## Demo code

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
var map = plugin.google.maps.Map.getMap(div, {
  mapType: plugin.google.maps.MapTypeId.ROADMAP
});
var select = div.getElementsByTagName('select')[0];
select.addEventListener('change', function() {
  map.setMapTypeId(plugin.google.maps.MapTypeId[this.value]);
});

```

![](image.gif)
