# htmlInfoWindow.setContent(content)

You can change the content of the html info window.

You can set HTML strings or HTML element.

```
htmlInfoWindow.setContent(color);
```


## Parameters

name           | type          | description
---------------|---------------|---------------------------------------
content        | string,node   | text, HTML strings, or HTML element
-----------------------------------------------------------------------


## Demo code

```html
<div id="map_canvas"></div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

var htmlInfoWindow = new plugin.google.maps.HtmlInfoWindow();

var button = document.createElement("button");
button.innerText = "Click me!";
button.addEventListener("click", function() {
  var html = "&lt;img src='./House-icon.png' width='64' height='64' &gt;" +
             "&lt;br&gt;" +
             "Ta-da!";
  htmlInfoWindow.setContent(html);
});

htmlInfoWindow.setContent(button);

var marker = map.addMarker({
  position: {lat: 0, lng: 0}
});

marker.on(plugin.google.maps.event.MARKER_CLICK, function() {
  htmlInfoWindow.open(marker);
});

marker.trigger(plugin.google.maps.event.MARKER_CLICK);
```

![](image.gif)
