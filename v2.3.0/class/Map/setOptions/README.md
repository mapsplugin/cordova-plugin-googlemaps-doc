# map.setOptions()

Sets multiple options to the map at the same time. You can specify the same options to the `map.getMap()` method.

```html
<div class="map" id="map_canvas">
  <span class="smallPanel"><button>Click here</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div, {
  'controls': {
    'compass': true,
    'myLocationButton': true,
    'indoorPicker': true,
    'zoom': true // Only for Android
  },
  'styles': [
    {
      "featureType": "administrative.land_parcel",
      "stylers": [
        {
          "color": "#23ff00"
        }
      ]
    },
    {
      "featureType": "landscape.natural.landcover",
      "stylers": [
        {
          "color": "#23ff00"
        }
      ]
    },
    {
      "featureType": "landscape.natural.terrain",
      "stylers": [
        {
          "color": "#23ff00"
        }
      ]
    },
    {
      "featureType": "water",
      "stylers": [
        {
          "color": "#0400ff"
        }
      ]
    }
  ]
});

var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {

  // Change the map options
  map.setOptions({
    'mapType': plugin.google.maps.MapTypeId.HYBRID,
    'controls': {
      'compass': true,
      'myLocationButton': true,
      'indoorPicker': true,
      'zoom': true,
      'mapToolbar': true   // currently Android only
    },
    'gestures': {
      'scroll': true,
      'tilt': true,
      'rotate': true,
      'zoom': true
    },
    'camera': {
      'target': {
        lat: 37.422848,
        lng: -122.085565
      },
      'tilt': 30,
      'zoom': 15,
      'bearing': 50
    },
    'preferences': {
      'zoom': {
        'minZoom': 0,
        'maxZoom': 3
      },
      'padding': {
        'left': 30,
        'top': 50,
        'bottom': 20,
        'right': 10
      }
    }
  });

});

```

![](image.gif)
