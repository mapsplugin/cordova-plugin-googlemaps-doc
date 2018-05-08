# map.addCircle()

The map.addCircle() method adds a circle onto the map.

```
(from v2.3.0 to current)
var circle = map.addCircle(options)

(from v2.0.0 to current)
map.addCircle(options, callback);
```

## Options

params         | type          | description
---------------|---------------|-----------------------------------------------------------------
center         | ILatLng       | center position of the map
radius         | number        | radius in meters
strokeColor?   | string        | (optional) stroke color (HTML colors)
strokeWidth?   | number        | (optional) stroke width in pixels
fillColor?     | string        | (optional) inside filling color
clickable?     | boolean       | (optional) set `true` to receive the `CIRCLE_CLICK` event
visible?       | boolean       | (optional) set `false` to create invisible circle
z-index?       | number        | (optional) z-index
-------------------------------------------------------------------------------------------------


## Demo code

```html
<div class="map" id="map_canvas"></div>
```

```js
var GOOGLE = {"lat" : 37.422858, "lng" : -122.085065};
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv);


// Add circle
var circle = map.addCircle({
  'center': GOOGLE,
  'radius': 300,
  'strokeColor' : '#AA00FF',
  'strokeWidth': 5,
  'fillColor' : '#880000'
});

map.moveCamera({
  target: circle.getBounds()
});

```

![](image.png)
