# map.addMarker()

The map.addMarker() method takes a single Marker options object literal, specifying the initial properties of the marker.

## Add a marker

```html
<div class="map" id="map_canvas1"></div>
```

```js
var div = document.getElementById("map_canvas1");
var map = plugin.google.maps.Map.getMap(div);
map.one(plugin.google.maps.event.MAP_READY, function() {

  map.addMarker({
    'position': {
      lat: 0,
      lng: 0
    }
  });
});
```

![](image1.png)

## Set title & snippet

Marker shows an infoWindow when you tap on the marker. You can also display the snippet strings.

```html
<div class="map" id="map_canvas2"></div>
```

```js
var div = document.getElementById("map_canvas2");
var map = plugin.google.maps.Map.getMap(div);
map.one(plugin.google.maps.event.MAP_READY, function() {

  map.addMarker({
    'position': {
      lat: 0,
      lng: 0
    },
    title: "Hello Cordova Google Maps\n for iOS and Android",
    snippet: "This plugin is awesome!"
  }, function(marker) {

    // Display the infoWindow
    marker.showInfoWindow();

  });
});
```

![](image2.png)

## Adding multiple markers

The code below is the recommended way to add multiple markers on the map.

```html
<div class="map" id="map_canvas3"></div>
```

```js
var div = document.getElementById("map_canvas3");
var map = plugin.google.maps.Map.getMap(div);
map.one(plugin.google.maps.event.MAP_READY, function() {
  var data = [
    {
      position: {lng: -122.1180187, lat: 37.3960513},
      title: "Ardis G Egan Intermediate School"
    },
    {
      position: {lng: -122.1102408, lat: 37.3943847},
      title: "Portola School"
    },
    {
      position: {lng: -122.0848257, lat: 37.3818032},
      title: "Isaac Newton Graham Middle School"
    },
    {
      position: {lng: -122.1082962, lat: 37.3863294},
      title: "Los Altos High School"
    },
    {
      position: {lng: -122.013571, lat: 37.3874409},
      title: "The Kings Academy"
    },
    {
      position: {lng: -122.082462, lat: 37.3627189},
      title: "Georgina P Blach Intermediate School"
    },
    {
      position: {lng: -122.0421832, lat: 37.3766077},
      title: "Benner Junior High School"
    }
  ];

  // Add markers
  var baseArrayClass = new plugin.google.maps.BaseArrayClass(data);

  baseArrayClass.map(function(options, cb) {
    // The variable "options" contains each element of the data.
    //
    // The variable "cb" is a callback function of interation.
    map.addMarker(options, cb);

  }, function(markers) {

    // Set a camera position that includes all markers.
    var bounds = [];
    data.forEach(function(POI) {
      bounds.push(POI.position);
    });

    map.moveCamera({
      target: bounds
    }, function() {

      // After camera moves open the last marker.
      markers[markers.length - 1].showInfoWindow();
    });

  });

});


```

![](image3.png)
