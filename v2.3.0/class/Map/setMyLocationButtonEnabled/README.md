# map.setMyLocationButtonEnabled()

Set true if you want to show the MyLocation button.

* Please read here: _[The myLocation property has changed!](https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.0.0/ReleaseNotes/v2.2.0/README.md#the-mylocation-property-has-changed) since v2.2.0_

```
marker.setMyLocationButtonEnabled(flag);
```

## Parameters

name           | type     | description
---------------|----------|---------------------------------------
flag           | boolean  | `false`: disabled, `true`: enabled
------------------------------------------------------------------

## Demo code

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>current: map.myLocationButton = true</button></span>
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
  map.setMyLocationButtonEnabled(isEnabled);
  button.innerHTML = "current: map.myLocationButton = " + isEnabled;
});

```

![](image.gif)
