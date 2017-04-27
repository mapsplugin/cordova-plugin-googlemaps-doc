# Marker class

## Create

<table>
    <tr>
        <th><a href="./addMarker/README.md">map.addMarker()</a></th>
        <td>Add a marker.</td>
    </tr>
</table>


## Methods

<table>
    <tr>
        <th><a href="./getPosition/README.md">getPosition()</a></th>
        <td>Get the marker position.</td>
    </tr>
    <tr>
        <th><a href="./showInfoWindow/README.md">showInfoWindow()</a></th>
        <td>Show the infoWindow of the marker.</td>
    </tr>
    <tr>
        <th><a href="./hideInfoWindow/README.md">hideInfoWindow()</a></th>
        <td>Hide the infoWindow of the marker.</td>
    </tr>
    <tr>
        <th><a href="./setAnimation/README.md">setAnimation()</a></th>
        <td>Specifies a marker animation.</td>
    </tr>
    <tr>
        <th><a href="./isVisible/README.md">isVisible()</a></th>
        <td>Retrurn true if the marker is visible.</td>
    </tr>
    <tr>
        <th><a href="./setTitle/README.md">setTitle()</a></th>
        <td>Change the marker title.</td>
    </tr>
    <tr>
        <th><a href="./setSnippet/README.md">setSnippet()</a></th>
        <td>Change the marker snippet.</td>
    </tr>
    <tr>
        <th><a href="./remove/README.md">remove()</a></th>
        <td>Remove the marker.</td>
    </tr>
    <tr>
        <th><a href="./setIconAnchor/README.md">setIconAnchor()</a></th>
        <td>Set the marker icon anchor.</td>
    </tr>
    <tr>
        <th><a href="./setInfoWindowAnchor/README.md">setInfoWindowAnchor()</a></th>
        <td>Change the info window anchor. </td>
    </tr>
    <tr>
        <th><a href="./isInfoWindowShown/README.md">isInfoWindowShown()</a></th>
        <td>Retrurn true if the infoWindow is shown on the marker.</td>
    </tr>
    <tr>
        <th><a href="./setOpacity/README.md">setOpacity()</a></th>
        <td>Change the marker opacity.</td>
    </tr>
    <tr>
        <th><a href="./setZIndex/README.md">setZIndex()</a></th>
        <td>Change the marker zIndex.</td>
    </tr>
    <tr>
        <th><a href="./isVisible/README.md">setVisible()</a></th>
        <td>Change the marker visibility. See the demo of the marker.isVisible()</td>
    </tr>
    <tr>
        <th><a href="./setDraggable/README.md">setDraggable()</a></th>
        <td>Set true if you allows all users to drag the marker.</td>
    </tr>
    <tr>
        <th><a href="./setDisableAutoPan/README.md">setDisableAutoPan()</a></th>
        <td>Set true if you **do not want** to move the map when you click on the marker.</td>
    </tr>
    <tr>
        <th><a href="./setPosition/README.md">setPosition()</a></th>
        <td>Set the marker position.</td>
    </tr>
    <tr>
        <th><a href="./setRotation/README.md">setRotation()</a></th>
        <td>Set the marker rotation angle.</td>
    </tr>
    <tr>
        <th><a href="./setFlat/README.md">setFlat()</a></th>
        <td>Set true if you want to be flat marker.</td>
    </tr>
    <tr>
        <th><a href="./setIcon/README.md">setIcon()</a></th>
        <td>Change the marker icon.</td>
    </tr>
</table>


## Events

<table>
    <tr>
        <th>MARKER_CLICK</th>
        <td>`Arguments:  none`This event is fired when you click on a marker.</td>
    </tr>
    <tr>
        <th>MARKER_DRAG_START</a>
        </th>
        <td>`Arguments:  LatLng`This event is fired when you start dragging with a marker.</td>
    </tr>
    <tr>
        <th>MARKER_DRAG</th>
        <td>`Arguments:  LatLng`This event is fired during marker dragging.</td>
    </tr>
    <tr>
        <th>MARKER_DRAG_END</th>
        <td>`Arguments:  LatLng`This event is fired when you drop the marker.</td>
    </tr>
    <tr>
        <th>INFO_OPEN</th>
        <td>`Arguments:  none`This event is fired when the infoWindow will be opened.</td>
    </tr>
    <tr>
        <th>INFO_CLICK</th>
        <td>`Arguments:  none`This event is fired when you click on the infoWindow.</td>
    </tr>
    <tr>
        <th>INFO_LONG_CLICK</th>
        <td>`Arguments:  none`This event is fired when you click longer on the infoWindow.</td>
    </tr>
    <tr>
        <th>INFO_CLOSE</th>
        <td>`Arguments:  none`This event is fired when the infoWindow is closed.</td>
    </tr>
</table>
