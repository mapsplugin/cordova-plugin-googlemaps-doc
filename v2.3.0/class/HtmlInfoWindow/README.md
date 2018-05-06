# HtmlInfoWindow class

_This class extends [BaseClass](../BaseClass/README.md)_.

## Contents

  - <a href="#overview">Overview</a>
    - <a href="#create-a-htmlinfowindow">Create a HtmlInfoWindow</a>
    - <a href="#display-dom-elements">Display DOM elements</a>
  - <a href="#api-reference">API Reference</a>

------------

## Overview

HtmlInfoWindow is able to display any HTML elements on it.

**While regular InfoWindow is rendered in map view, HtmlInfoWindow is rendered in browser view.**

<a href="./rendering.png"><img src="./rendering.png" width="400"><br>(click to see in large image)</a>

------------

### Create a HtmlInfoWindow

```js
var htmlInfoWindow = new plugin.google.maps.HtmlInfoWindow();

var html = [
  'This is &lt;b&gt;Html&lt;/b&gt; InfoWindow',
  '&lt;br&gt;',
  '&lt;button onclick="javascript:alert(\'clicked!\');"&gt;click here&lt;/button&gt;',
].join("");
htmlInfoWindow.setContent(html);

var marker = map.addMarker({
  position: {lat: 0, lng: 0}
});

marker.on(plugin.google.maps.event.MARKER_CLICK, function() {
  htmlInfoWindow.open(marker);
});
marker.trigger(plugin.google.maps.event.MARKER_CLICK);
```

<img src="newHtmlInfoWindow/image.gif" width="200">

------------------------------------------------------------------------

### Display DOM elements

The `setContent()` method accepts either `HTML strings` or `DOM elements`.

```js
var htmlInfoWindow = new plugin.google.maps.HtmlInfoWindow();

var iframe = document.createElement("iframe");
iframe.setAttribute("width", "560");
iframe.setAttribute("height", "315");
iframe.setAttribute("src", "https://www.youtube.com/embed/g8jTeS_Ey4A");
iframe.setAttribute("frameboarder", "0");
htmlInfoWindow.setContent(iframe);

var marker = map.addMarker({
  position: {lat: 0, lng: 0}
});

marker.on(plugin.google.maps.event.MARKER_CLICK, function() {
  htmlInfoWindow.open(marker);
});
marker.trigger(plugin.google.maps.event.MARKER_CLICK);
```

<img src="DOM_in_htmlInfoWindow.png" width="200">

------------
## API Reference

### Create
<table>
    <tr>
        <th><a href="./newHtmlInfoWindow/README.md">HtmlInfoWindow()</a></th>
        <td>Add a HTML infoWindow.</td>
    </tr>
</table>


### Method

<table>
    <tr>
        <th><a href="./setBackgroundColor/README.md">setBackgroundColor()</a></th>
        <td>Change the backgroundColor</td>
    </tr>
    <tr>
        <th><a href="./setContent/README.md">setContent()</a></th>
        <td>Set your HTML contents.</td>
    </tr>
    <tr>
        <th><a href="./open/README.md">open()</a></th>
        <td>Open the htmlInfoWindow</td>
    </tr>
    <tr>
        <th><a href="./close/README.md">close()</a></th>
        <td>Close the htmlInfoWindow</td>
    </tr>
</table>

### Events

<table>
    <tr>
        <th>INFO_OPEN</th>
        <td>Arguments:  none<br>This event is fired when the infoWindow is opened.</td>
    </tr>
    <tr>
        <th>INFO_CLOSE</th>
        <td>Arguments:  none<br>This event is fired when the infoWindow is closed.</td>
    </tr>
</table>
