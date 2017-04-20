**This page will update without announce during in beta. Please check periodically**

## Method names are renamed
Several methods are renamed in v2. Please rewrite your code.

<table>
<caption>method names</caption>
<tr><th>v1</th><th>v2</th></tr>
<tr><td>map.setCenter()</td><td>map.setCameraTarget()</td></tr>
<tr><td>map.setZoom()</td><td>map.setCameraZoom()</td></tr>
<tr><td>map.setBearing()</td><td>map.setCameraBearing()</td></tr>
<tr><td>map.setTilt()</td><td>map.setCameraTilt()</td></tr>
<tr><td>map.getCenter()</td><td>map.getCameraTarget()</td></tr>
<tr><td>map.getZoom()</td><td>map.getCameraZoom()</td></tr>
<tr><td>map.getBearing()</td><td>map.getCameraBearing()</td></tr>
<tr><td>map.getTilt()</td><td>map.getCameraTilt()</td></tr>
<tr><td>map.setBackgroundColor()</td><td>Environent.setBackgroundColor()</td></tr>
</table>


## Deprecated &amp; not ready yet
These methods are not implemented yet because of deprecated considering or technically hard work is needed.

<table>
<caption>method names</caption>
<tr><th>v1</th><th>v2</th></tr>
<tr><td>map.showDialog()</td><td>Deprecated considering</td></tr>
<tr><td>map.closeDialog()</td><td>Deprecated considering</td></tr>
<tr><td>map.setDebuggable()</td><td>technically not ready yet</td></tr>
<tr><td>map.refreshLayout()</td><td>Actually implemented, but you don't need to use this anymore.<br>
Instead of this method, trigger the <a href="https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/What-are-news-in-v2%3F#change-4-save-battery-life">touch_start event</a>.</td></tr>
<tr><td>map.addKmlOverlay()</td><td>technically not ready yet</td></tr>
</table>





#### Version 1.x events
<table>
<tr><th>event name</th>
<th>Androide</th>
<th>iOS</th>
</tr>
<tr><td> MAP_CLICK </td><td> YES </td><td> YES </td></tr>
<tr><td> MAP_LONG_CLICK </td><td> YES </td><td> YES </td></tr>
<tr><td> MY_LOCATION_CHANGE </td><td> YES </td><td> NO </td></tr>
<tr><td> MY_LOCATION_BUTTON_CLICK </td><td> YES </td><td> YES </td></tr>
<tr><td> INDOOR_BUILDING_FOCUSED </td><td> YES </td><td> YES </td></tr>
<tr><td> INDOOR_LEVEL_ACTIVATED </td><td> YES </td><td> YES </td></tr>
<tr><td> CAMERA_CHANGE </td><td> YES </td><td> YES </td></tr>
<tr><td> CAMERA_IDLE </td><td> NO </td><td> YES </td></tr>
<tr><td> MAP_READY </td><td> YES </td><td> YES </td></tr>
<tr><td> MAP_LOADED </td><td> YES </td><td> NO </td></tr>
<tr><td> MAP_WILL_MOVE </td><td> NO </td><td> YES </td></tr>
<tr><td> MAP_CLOSE </td><td> YES </td><td> YES </td></tr>
<tr><td> OVERLAY_CLICK </td><td> YES </td><td> YES </td></tr>
<tr><td> INFO_CLICK </td><td> YES </td><td> YES </td></tr>
<tr><td> MARKER_DRAG </td><td> YES </td><td> YES </td></tr>
<tr><td> MARKER_DRAG_START </td><td> YES </td><td> YES </td></tr>
<tr><td> MARKER_DRAG_END </td><td> YES </td><td> YES </td></tr>
</table>

#### Version 2.x events
<table>
<tr><th>event name</th>
<th>Androide</th>
<th>iOS</th>
<th>arguments[0]</th>
</tr>
<tr><td> MAP_READY </td><td> YES </td><td> YES </td><td> none </td></tr>
<tr><td> MAP_CLICK </td><td> YES </td><td> YES </td><td>  LatLng </td></tr>
<tr><td> MAP_LONG_CLICK </td><td> YES </td><td> YES </td><td>  LatLng </td></tr>
<tr><td> MY_LOCATION_BUTTON_CLICK </td><td> YES </td><td> YES </td><td> none </td></tr>
<tr><td> INDOOR_BUILDING_FOCUSED </td><td> YES </td><td> YES </td><td> none </td></tr>
<tr><td> INDOOR_LEVEL_ACTIVATED </td><td> YES </td><td> YES </td><td>  building information </td></tr>
<tr><td> CAMERA_MOVE_START </td><td> YES </td><td> YES </td><td> true if the camera move start by gesture </td></tr>
<tr><td> CAMERA_MOVE </td><td> YES </td><td> YES </td><td>  CameraPosition </td></tr>
<tr><td> CAMERA_MOVE_END </td><td> YES </td><td> YES </td><td>  CameraPosition </td></tr>
<tr><td> POLYGON_CLICK </td><td> YES </td><td> YES </td><td> LatLng(clicked position) </td></tr>
<tr><td> POLYLINE_CLICK </td><td> YES </td><td> YES </td><td> LatLng(clicked position) </td></tr>
<tr><td> CIRCLE_CLICK </td><td> YES </td><td> YES </td><td> LatLng(clicked position) </td></tr>
<tr><td> GROUND_OVERLAY_CLICK </td><td> YES </td><td> YES </td><td> LatLng(clicked position) </td></tr>
<tr><td> INFO_CLICK </td><td> YES </td><td> YES </td><td> LatLng(marker position) </td></tr>
<tr><td> INFO_LONG_CLICK </td><td> YES </td><td> YES </td><td> LatLng(marker position) </td></tr>
<tr><td> INFO_CLOSE </td><td> YES </td><td> YES </td><td> LatLng(marker position) </td></tr>
<tr><td> INFO_OPEN </td><td> YES </td><td> YES </td><td> LatLng(marker position) </td></tr>
<tr><td> MARKER_CLICK </td><td> YES </td><td> YES </td><td> LatLng(marker position) </td></tr>
<tr><td> MARKER_DRAG </td><td> YES </td><td> YES </td><td> LatLng(marker position) </td></tr>
<tr><td> MARKER_DRAG_START </td><td> YES </td><td> YES </td><td> LatLng(marker position) </td></tr>
<tr><td> MARKER_DRAG_END </td><td> YES </td><td> YES </td><td> LatLng(marker position) </td></tr>
</table>

### removed the `xxxClicked` properties

The plugin version 2 does not support the `xxxClicked` properties anymore.
Please use `addEventListener() or on()` methods instead.

```js

// version 1
map.addMarker({
  position: ...
  markerClick: function(marker) {
    marker.showInfoWindow();
  }
});


// version 2
map.addMarker({
  position: ...
}, function(marker) {

  marker.addEventListener(plugin.google.maps.event.MARKER_CLICK, function() {
    marker.showInfoWindow();
  });

});
```
