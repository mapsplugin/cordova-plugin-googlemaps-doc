# htmlInfoWindow.setBackgroundColor()

You can change the background color of HtmlInfoWindow.

```html
<div id="map_canvas"></div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);
map.one(plugin.google.maps.event.MAP_READY, function() {
  var htmlInfoWindow = new plugin.google.maps.HtmlInfoWindow();

  var contents = document.createElement("div");
  contents.appendChild(document.createTextNode("Change the backgroundColor"));
  contents.appendChild(document.createElement("br"));

  var button = document.createElement("button");
  button.appendChild(document.createTextNode("click here"));
  contents.appendChild(button);
  button.addEventListener("click", function() {
    htmlInfoWindow.setBackgroundColor("blue");
  });
  htmlInfoWindow.setContent(contents);

  map.addMarker({
    position: {lat: 0, lng: 0},
    draggable: true,
    infoWindow: htmlInfoWindow
  });

});
```

![](image.gif)
