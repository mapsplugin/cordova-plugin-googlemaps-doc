# tileOverlay.setFadeIn()

Set whether the tiles should fade in.

```
tileOverlay.setFadeIn(flag);
```

## Parameters

name           | type          | description
---------------|---------------|---------------------------------------
flag           | boolean       | `true`: fadeIn, `false`: no-fadeIn
-----------------------------------------------------------------------

## Demo code

```html
<div id="map_canvas">
  <span class="smallPanel"><input type="checkbox" id="toggleCheckbox" checked="checked">tileoverlay.setFadeIn(true)</span>
</div>
```

```js
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv);


// Add a tile overlay
var tileOverlay = map.addTileOverlay({
  // &lt;x&gt;,&lt;y&gt; and &lt;zoom&gt; are replaced with values
  // (i.e. http://tile.stamen.com/toner/2/1/2.png)
  getTile: function(x, y, zoom) {
    return "http://tile.stamen.com/toner/" + zoom + "/" + x + "/" + y + ".png";
  }
});

var checkbox = document.getElementById("toggleCheckbox");
checkbox.addEventListener("change", function() {

    // Change the fadeIn property
    tileOverlay.setFadeIn(checkbox.checked);
});

```

![](image.gif)
