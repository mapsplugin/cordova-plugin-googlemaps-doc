:green_heart: This is the latest document.

# map.setMyLocationEnabled()

Set true if you want to show the MyLocation control (blue dot).

* Please read here: _[The myLocation property has changed!](https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.0.0/ReleaseNotes/v2.2.0/README.md#the-mylocation-property-has-changed) since v2.2.0_

```
marker.setMyLocationEnabled(flag);
```

## Parameters

name           | type     | description
---------------|----------|---------------------------------------
flag           | boolean  | `false`: disabled, `true`: enabled
------------------------------------------------------------------

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>current: map.myLocation = true</button></span>
</div>
```

```js
var map = plugin.google.maps.Map.getMap(div, {
  controls: {
    myLocationButton: true,
    myLocation: true
  }
});

var isEnabled = true;
var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {
  isEnabled = !isEnabled;
  map.setMyLocationEnabled(isEnabled);
  button.innerHTML = "current: map.myLocation = " + isEnabled;
});
```

![](image.gif)
