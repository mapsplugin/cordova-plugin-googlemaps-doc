# GroundOverlay class

_This class extends [BaseClass](../BaseClass/README.md)_.

## Contents

  - <a href="#overview">Overview</a>
    - <a href="#create-one-groundoverlay">Create one GroundOverlay</a>
    - <a href="#listen-click-event">Click event</a>
  - <a href="#api-reference">API Reference</a>

------------

## Overview

### Create one GroundOverlay

```js
var bounds = [
  {"lat": 40.712216, "lng": -74.22655},
  {"lat": 40.773941, "lng": -74.12544}
];
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: bounds
  }
});

// Add ground overlay
var groundOverlay = map.addGroundOverlay({
  'url': "../images/newark_nj_1922.jpg",
  'bounds': bounds,
  'opacity': 0.5
});
```

<img src="./addGroundOverlay/image.png" width="200" />

---------------------------------------------------------------

### Listen CLICK event

In order to listen the GROUND_OVERLAY_CLICK event, you need to specify the `clickable` option.
You can get the latitude/longitude pair of clicked position.

```js
var bounds = [
  {"lat": 40.712216, "lng": -74.22655},
  {"lat": 40.773941, "lng": -74.12544}
];

// Add ground overlay
var groundOverlay = map.addGroundOverlay({
  'url': "../images/newark_nj_1922.jpg",
  'bounds': bounds,
  'opacity': 0.5,
  'clickable': true  // default = false
});

// Catch the GROUND_OVERLAY_CLICK event
groundOverlay.on(plugin.google.maps.event.GROUND_OVERLAY_CLICK, function (latLng) {
  ...
});
```

<img src="./GROUND_OVERLAY_CLICK/image.gif" width="200" />

---------------------------------------------------------------

## API Reference

### Create

<table>
    <tr>
        <th><a href="./addGroundOverlay/README.md">map.addGroundOverlay()</a></th>
        <td>Add a ground overlay.</td>
    </tr>
</table>

### Methods

<table>
    <tr>
        <th><a href="./setBounds/README.md">setBounds()</a></th>
        <td>Change the bounds of the GroundOverlay.</td>
    </tr>
    <tr>
        <th>getBounds()</th>
        <td>Return the current center position.</td>
    </tr>
    <tr>
        <th><a href="./setBearing/README.md">setBearing()</a></th>
        <td>Change the bearing of the ground overlay.</td>
    </tr>
    <tr>
        <th>getBearing()</th>
        <td>Return the current bearing value.</td>
    </tr>
    <tr>
        <th><a href="./setImage/README.md">setImage()</a></th>
        <td>Change the image of the ground overlay</td>
    </tr>
    <tr>
        <th><a href="./setOpacity/README.md">setOpacity()</a></th>
        <td>Change the opacity of the ground overlay</td>
    </tr>
    <tr>
        <th>getOpacity()</th>
        <td>Return the current opacity.</td>
    </tr>
    <tr>
        <th><a href="./setClickable/README.md">setClickable()</a></th>
        <td>Change click-ability of the ground overlay.</td>
    </tr>
    <tr>
        <th>getClickable()</th>
        <td>Return true if the ground overlay is clickable.</td>
    </tr>
    <tr>
        <th><a href="./setVisible/README.md">setVisible()</a></th>
        <td>Change visibility of the ground overlay.</td>
    </tr>
    <tr>
        <th>getVisible()</th>
        <td>Return true if the ground overlay is visible.</td>
    </tr>
    <tr>
        <th><a href="./setZIndex/README.md">setZIndex()</a></th>
        <td>Change the ground overlay zIndex order.</td>
    </tr>
    <tr>
        <th>getZIndex()</th>
        <td>Return the current ground overlay zIndex.</td>
    </tr>
    <tr>
        <th><a href="./remove/README.md">remove()</a></th>
        <td>Remove the ground overlay.</td>
    </tr>
</table>

### Events
<table>
    <tr>
        <th><a href="./GROUND_OVERLAY_CLICK/README.md">GROUND_OVERLAY_CLICK</a></th>
        <td>Arguments:  <a href="../LatLng/README.md">LatLng</a><br>This event is fired when you click on a ground overlay.</td>
    </tr>
</table>
