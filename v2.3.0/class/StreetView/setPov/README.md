# panorama.setPov()

Sets the point of view for the Street View panorama.

```js
panorama.setPov(pov);
```


## Parameters

name           | type          | description
---------------|---------------|---------------------------------------
pov            | PanoramaPov   | A point of view object which specifies the camera's orientation at the Street View panorama's position
-----------------------------------------------------------------------


### PanoramaPov

name           | type          | description
---------------|---------------|---------------------------------------
bearing        | number        | The camera heading in degrees relative to true north. True north is 0&deg;, east is 90&deg;, south is 180&deg;, west is 270&deg;.
tilt           | number        | The camera pitch in degrees, relative to the street view vehicle. Ranges from 90&deg; (directly upwards) to -90&deg; (directly downwards).
zoom           | number        | Sets the zoom level of the camera.
duration       | number        | The length of time, in milliseconds, it takes to transition from the current camera position to the given one
-----------------------------------------------------------------------

## Demo code

```html
<div id="panorama_canvas"></div>
```

```js
var panoramaDiv = document.getElementById("panorama_canvas");
var panorama = plugin.google.maps.StreetView.getPanorama(panoramaDiv, {
  camera: {
    target: {lat: 42.345573, lng: -71.098326}
  }
});

setInterval(function() {
  var bearing = panorama.get("camera_bearing") + 60;
  bearing = bearing >= 360 ? 0 : bearing;
  panorama.setPov({
    bearing: bearing,
    duration: 2000
  });

}, 2000);
```

![](image.gif)
