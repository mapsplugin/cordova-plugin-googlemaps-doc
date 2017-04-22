# Map class

## Create a map

You can create a google maps using `plugin.google.maps.Map.getMap(div)`.

Since the cordova-plugin-googlemaps has two side: `JavaScript` and `native`.

The native side initialization takes a time kind of longer than JavaScript side, you need to wait the **plugin.google.maps.event.MAP_READY** event.

```html
<div style="width:500px;height:500px" id="map_canvas1"></div>
```

```javascript
var div = document.getElementById("map_canvas1");
var map = plugin.google.maps.Map.getMap(div);
map.one(plugin.google.maps.event.MAP_READY, function() {
  console.log("--> map_canvas1 : ready.");
});
```

![](image1.png)

## Create a map with initialize options

You can specify the map options with **getMap()** method.

```js
var div = document.getElementById("map_canvas2");
var map = plugin.google.maps.Map.getMap(div, {
  'mapType': plugin.google.maps.MapTypeId.HYBRID,
  'controls': {
    'compass': true,
      //'myLocationButton': true, // you can specify this option, but app asks permission when it launches.
      'indoorPicker': true,
      'zoom': true
    },
    'gestures': {
      'scroll': true,
      'tilt': true,
      'rotate': true,
      'zoom': true
    },
    camera: {
      target : [
        {lat:41.79883, lng:140.75675},
        {lat:41.799240000000005, lng:140.75875000000002},
        {lat:41.797650000000004, lng:140.75905},
        {lat:41.79637, lng:140.76018000000002},
        {lat:41.79567, lng:140.75845},
        {lat:41.794470000000004, lng:140.75714000000002},
        {lat:41.795010000000005, lng:140.75611},
        {lat:41.79477000000001, lng:140.75484},
        {lat:41.79576, lng:140.75475},
        {lat:41.796150000000004, lng:140.75364000000002},
        {lat:41.79744, lng:140.75454000000002},
        {lat:41.79909000000001, lng:140.75465},
        {lat:41.79883, lng:140.75673}
      ],
      'tilt': 60,
      'bearing': 50
    }
  });
map.one(plugin.google.maps.event.MAP_READY, function() {
  console.log("--> map_canvas2 : ready.");
});

```
![](image2.png)


## Put any HTML elements on the map

The one of the benefits of the cordova-plugin-googlemaps is you are able to put any HTML elements on the map.

```html
<div class="map" id="map_canvas3" style="position:relative">
  <span class="smallPanel"><button>HTML button1</button></span>
  <span class="smallPanel" style="position:absolute;bottom:1em;right:1em;"><button>HTML button2</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas3");
var map = plugin.google.maps.Map.getMap(div);
map.one(plugin.google.maps.event.MAP_READY, function() {
  console.log("--> map_canvas3 : ready.");
});
var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {
  alert("The HTML button1 on the map is clicked.");
});
var button = div.getElementsByTagName('button')[1];
button.addEventListener('click', function() {
  alert("The HTML button2 on the map is clicked.");
});
```

![](image3.gif)
