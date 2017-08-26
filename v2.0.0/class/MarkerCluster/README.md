# MarkerCluster class

The marker cluster helps you to add bunch of markers on the map.
Closed-locations are clustered to one marker, and the clustered marker displays the number of markers.

If you click on the clustered marker, the map zooms-in to the bounds that contains all markers in that area.

![](cluster.gif)

## Create

<table>
    <tr>
        <th><a href="./addMarkerCluster/README.md">map.addMarkerCluster()</a></th>
        <td>Add a marker cluster.</td>
    </tr>
</table>


## Methods

<table>
    <tr>
        <th>addMarker()</th>
        <td>Add one location.</td>
    </tr>
    <tr>
        <th>addMarkers()</th>
        <td>Add multiple locations.</td>
    </tr>
    <tr>
        <th>remove()</th>
        <td>Remove the marker cluster.</td>
    </tr>
</table>


## Events

<table>
    <tr>
        <th>MARKER_CLICK</th>
        <td>Arguments:  <a href="../LatLng/README.md">LatLng</a>, <a href="../Marker/README.md">Marker</a><br>This event is fired when you click on a marker.</td>
    </tr>
</table>
