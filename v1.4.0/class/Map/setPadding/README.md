This method allows you to define a visible region on the map, to signal to the map that portions of the map around the edges may be obscured, by setting padding on each of the four edges of the map.

Map functions will be adapted to the padding. For example, the zoom controls, compass, copyright notices and Google logo will be moved to fit inside the defined region, camera movements will be relative to the center of the visible region, etc.

This results in the following changes:

* Camera movements via API calls or button presses (e.g., compass, my location, zoom buttons) will be relative to the padded region.
* [map.getCameraPosition()](../getCameraPosition/README.md) will return the center of the padded region.
* [map.getVisibleRegion()](../getVisibleRegion/README.md) will return the padded region.
* UI controls will be offset from the edge of the container by the specified number of pixels.

```js
// top = right = bottom = left = 30px
map.setPadding( 30 )

// top = bottom = 30px
// left = right = 50px
map.setPadding( 30, 50 )

// top = 30px
// left = right = 50px
// bottom = 20px
map.setPadding( 30, 50 , 20 )

// top = 30px
// right = 50px
// bottom = 20px
// left = 10px
map.setPadding( 30, 50 , 20 , 10 )
```
