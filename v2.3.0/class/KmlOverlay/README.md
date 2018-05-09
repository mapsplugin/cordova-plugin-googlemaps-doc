# KmlOverlay class

_This class extends [BaseClass](../BaseClass/README.md)_.

## Contents

  - <a href="#overview">Overview</a>
    - <a href="#add-kml-overlay">Add KML overlay</a>
    - <a href="#click-event">Click event</a>
    - <a href="#update-the-polyline">Update the polyline</a>
    - <a href="#assign-your-data">Assign your data</a>
  - <a href="#api-reference">API Reference</a>

------------

## Overview

KML is a xml file format that is used for geographic.
Most common geographic softwares support this KML format file.

KML has complex structure. This plugin supports only following tags.

<table>
<tr>
  <td>kml</td><td>folder</td><td>placemark</td><td>document</td><td>multigeometry</td>
</tr>
<tr>
  <td>photooverlay</td><td>point</td><td>polygon</td><td>linestring</td><td>groundoverlay</td>
</tr>
<tr>
  <td>networklink<br>(&lt;region&gt; is also supported)</td><td>lookat</td><td>extendeddata</td><td>schema</td><td>styles</td>
</tr>
<tr>
  <td>balloonstyle<br>(&lt;description&gt; only)</td><td>iconstyle</td><td>styleurl</td><td>stylemap<br>(normal mode only)</td><td>coordinates</td>
</tr>
</table>

**Unfortunately, KMZ file is not supported yet.**

Regarding of `<ExtendedData>` tag, if the KML file contains `<BaloonStyle>` tag as template,
the maps plugin displays just like defined. Otherwise, draw a table like below.


------------


### Add KML Overlay

The **map.addKmlOverlay()** method reads a KML file from local or Internet.

```js
var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  'mapTypeId': plugin.google.maps.MapTypeId.SATELLITE
});

map.addKmlOverlay({
  'url': "./marker.kml"
}, function(kmlOverlay) {

  // Fit the camera viewport to show all markers.
  map.moveCamera(kmlOverlay.camera);

});

```

**marker.kml**

```xml
<?xml version="1.0" encoding="utf-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
  <Document>
    <Style id="rf">
      <ListStyle>
        <listItemType>radioFolder</listItemType>
      </ListStyle>
    </Style>
    <Folder>
      <name>One at a time</name>
      <styleUrl>#rf</styleUrl>
      <Placemark>
        <name>Radio A</name>
        <Point>
          <coordinates>-121.9921875,37.44140625</coordinates>
        </Point>
      </Placemark>
      <Placemark>
        <name>Radio B</name>
        <Point>
          <coordinates>-121.9921875,37.265625</coordinates>
        </Point>
      </Placemark>
    </Folder>
    <Folder>
      <name>Both visible</name>
      <Placemark>
        <name>C</name>
        <Point>
          <coordinates>-121.16796875,37.44140625</coordinates>
        </Point>
      </Placemark>
      <Placemark>
        <name>D</name>
        <Point>
          <coordinates>-121.16796875,37.265625</coordinates>
        </Point>
      </Placemark>
    </Folder>
  </Document>
</kml>
```

<img src="example1.png" width="200">

------------

### Click event

The `KML_CLICK` event is fired when you tap on the overlays that are generated with `addKmlOverlay()` method.

```
map.addKmlOverlay({
  'url': "./marker.kml"
}, function(kmlOverlay) {

  // Fit the camera viewport to show all markers.
  map.moveCamera(kmlOverlay.camera);

  // You can get additional information
  kmlOverlay.on(plugin.google.maps.event.KML_CLICK, function(overlay, latLng) {
    // overlay is vary, such as Marker, Polyline
    console.log(overlay);
  });

});
```

<img src="./KML_CLICK/image.gif" width="200">

## Create

<table>
    <tr>
        <th><a href="./addKmlOverlay/README.md">map.addKmlOverlay()</a></th>
        <td>Add a kml overlay.</td>
    </tr>
</table>

## Methods

<table>
  <tr>
      <th><a href="./setClickable/README.md">setClickable()</a></th>
      <td>Change click-ability of the kml overlay.</td>
  </tr>
  <tr>
      <th><a href="./setVisible/README.md">setVisible()</a></th>
      <td>Change visibility of the kml overlay.</td>
  </tr>
  <tr>
    <th><a href="./remove/README.md">remove()</a></th>
    <td>Remove the ground overlay.</td>
  </tr>
</table>

## Events
<table>
    <tr>
        <th><a href="./GROUND_OVERLAY_CLICK/README.md">GROUND_OVERLAY_CLICK</a></th>
        <td>Arguments:  <a href="../LatLng/README.md">LatLng</a><br>This event is fired when you click on a circle.</td>
    </tr>
</table>
