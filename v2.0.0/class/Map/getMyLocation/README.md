# map.getMyLocation(options?, success_callback, error_callback)

Get the current device location.

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>Click here</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);
map.one(plugin.google.maps.event.MAP_READY, function() {

  var onSuccess = function(location) {
    var msg = ["Current your location:\n",
      "latitude:" + location.latLng.lat,
      "longitude:" + location.latLng.lng,
      "speed:" + location.speed,
      "time:" + location.time,
      "bearing:" + location.bearing].join("\n");


    map.addMarker({
      'position': location.latLng,
      'title': msg
    }, function(marker) {
      marker.showInfoWindow();
      map.animateCamera({
        target: location.latLng,
        zoom: 16
      }, function() {
        marker.showInfoWindow();
      });
    });
  };

  var onError = function(msg) {
    alert(JSON.stringify(msg));
  };

  var button = div.getElementsByTagName('button')[0];
  button.addEventListener('click', function() {
    map.clear();
    var options = {
      enableHighAccuracy: false  // Set true if you want to use GPS. Otherwise, use network.
    };
    map.getMyLocation(options, onSuccess, onError);
  });

});
```

![](image.gif)
