:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# map.setClickable()

Enables or disables click events for map (default: true).

```
marker.setClickable(flag);
```

## Parameters

name           | type     | description
---------------|----------|---------------------------------------
flag           | boolean  | `false`: non-clickable, `true`: clickable
------------------------------------------------------------------

## Demo code

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>current: map.clickable = true</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

var clickable = true;
var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {
  clickable = !clickable;
  map.setClickable(clickable);
  button.innerHTML = "current: map.clickable = " + clickable;
});

map.on(plugin.google.maps.event.MAP_CLICK, function() {
  alert("Click!");
});

```

![](image.gif)
