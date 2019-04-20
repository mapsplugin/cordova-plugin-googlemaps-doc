:green_heart: This is the latest document.

# plugin.google.maps.StreetView.getPanorama()

## Create a panorama view

You can create a panorama view using `plugin.google.maps.StreetView.getPanorama(div)`.

Since the cordova-plugin-googlemaps has two side: `JavaScript` and `native`.

The native side initialization takes a time kind of longer than JavaScript side, you need to wait the **plugin.google.maps.event.PANORAMA_READY** event.

```html
<div style="width:500px;height:500px" id="pano_canvas1"></div>
```

```js
var div = document.getElementById("pano_canvas1");

var panorama = plugin.google.maps.StreetView.getPanorama(div);


panorama.one(plugin.google.maps.PANORAMA_READY, function() {
  console.log("--> pano_canvas1 : ready.");

  panorama.setPosition({lat: 42.345573, lng: -71.098326});
});
```

<img src="image1.png" width="250">

-----------------------------------------------------------------------------------------------

## Create a panorama with initialize options

You can specify the options with **getPanorama()** method.


```js
var div = document.getElementById("panorama_canvas2");
var panorama = plugin.google.maps.StreetView.getPanorama(div, {
  camera: {
    target: {lat: 42.345573, lng: -71.098326},
    zoom: 1,
    bearing: 235,
    tilt: 10,
    radius: 10,  // Search the nearest panorama location from the target property. Default is 50m.
    source: plugin.google.maps.StreetView.Source.OUTSIDE // DEFAULT or OUTSIDE
  },
  gestures: {
    panning: true,
    zoom: true
  },
  controls: {
    navigation: true,   // White arrows to the next location
    streetNames: true
  }
});
```

<img src="image2.png" width="250">
