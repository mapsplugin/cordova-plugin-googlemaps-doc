### Add a TileOverlay
A Tile Overlay is a set of images which are displayed on top of the base map tiles.
These tiles are displayed like the base map tiles, but you can set the opacity of the tiles.

To add a tileOverlay, call `addTileOverlay()` method.
The **map.addTileOverlay()** method takes a single overlay options object literal, specifying the initial properties of the tile overlay.

The following properties are available when constructing a TileOverlay:

Field Name | Type | Description
----|------|----
tileUrlFormat | String | The url of the tile images. You must include `<x>`,`<y>` and `<zoom>` strings into the URL format.
visible | Boolean | false if you want to hide the ground overlay. (Default: true)
zIndex | Number | Specify the zIndex. (Default: 0)
tileSize | Number | Specify the tile image size. Values less than the equivalent of 128 points (e.g. 256 pixels on retina devices) may not perform well and are not recommended. (Default: 256)
opacity | Number | Specify the tile opacity from 0.0 to 1.0 (Default: 1)

```js
map.addTileOverlay({
  // <x>,<y> and <zoom> are replaced with values
  tileUrlFormat: "http://tile.stamen.com/watercolor/<zoom>/<x>/<y>.jpg"
}, function(tileOverlay) {
  mTileOverlay = tileOverlay;
  map.showDialog();
});
```
![image](tileOverlay.gif)

***
# TileOverlay Class Reference
Method | Return value | Description
----|------|----
getVisible() | Boolean  | Return true if the tile overlay is visible.
setVisible(Boolean) | void  | Set false if you want to hide.
getFadeIn() | Boolean  | Get whether the tiles should fade in.
setFadeIn(Boolean) | void  | Set whether the tiles should fade in.
getZIndex() | Number  | Return the zIndex of the tile overlay.
setZIndex(Number) | void  | Set the zIndex of the tile overlay.
getOpacity() | Number  | Return the opacity of the tile overlay.
setOpacity(Number) | void  | Set the opacity of the tile overlay.
clearTileCache() | void  | Remove the tile cache.
remove() | void  | Remove the tile overlay.
getMap() | [Map](../Map/README.md)  | Return the map instance.
