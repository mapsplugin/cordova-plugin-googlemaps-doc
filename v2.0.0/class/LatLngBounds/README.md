:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**


---------------
# LatLngBounds class

A LatLngBounds instance represents a rectangle in geographical coordinates, including one that crosses the 180 degrees longitudinal meridian.

## Create

```js
var latLngBounds  = new plugin.google.maps.LatLngBounds([Array.<LatLng>]);
```

## Methods

<table>
  <tr>
      <th>contains(LatLng)</th>
      <td><b>Return Value:  boolean</b><br><br>
Returns true if the given lat/lng is in this bounds.</td>
  </tr>
  <tr>
      <th>extend(LatLng)</th>
      <td><b>Return Value:  None</b><br><br>
Extends this bounds to contain the given point.</td>
  </tr>
  <tr>
      <th>getCenter()</th>
      <td><b>Return Value:  <a href="../LatLng/README.md">LatLng</a></b><br><br>
Computes the center of this LatLngBounds</td>
  </tr>
  <tr>
      <th>toString()</th>
      <td><b>Return Value:  string</b><br><br>
Converts to string.</td>
  </tr>
  <tr>
      <th>toUrlValue(precision?:number)</th>
      <td><b>Return Value:  string</b><br><br>
Returns a string of the form "lat_lo,lng_lo,lat_hi,lng_hi" for this bounds, where "lo" corresponds to the southwest corner of the bounding box, while "hi" corresponds to the northeast corner of that box.</td>
  </tr>
</table>
