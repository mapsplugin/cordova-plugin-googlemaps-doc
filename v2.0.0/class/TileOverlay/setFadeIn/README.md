# tileOverlay.setFadeIn()

Set whether the tiles should fade in.

```html
<div id="map_canvas">
  <span class="smallPanel"><input type="checkbox" id="toggleCheckbox" checked="checked">tileoverlay.setFadeIn(true)</span>
</div>
```

```js
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv);

map.addEventListener(plugin.google.maps.event.MAP_READY, function() {

    // Add a tile overlay
    map.addTileOverlay({
      // &lt;x&gt;,&lt;y&gt; and &lt;zoom&gt; are replaced with values
      // (i.e. http://tile.stamen.com/toner/2/1/2.png)
      getTile: function(x, y, zoom) {
        return "http://tile.stamen.com/toner/" + zoom + "/" + x + "/" + y + ".png";
      }
    }, function(tileOverlay) {

      var checkbox = document.getElementById("toggleCheckbox");
      checkbox.addEventListener("change", function() {

          // Change the fadeIn property
          tileOverlay.setFadeIn(checkbox.checked);
      });

    });
});
```

![](image.gif)
