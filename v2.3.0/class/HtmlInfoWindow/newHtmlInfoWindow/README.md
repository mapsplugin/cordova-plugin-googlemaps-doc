:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# new plugin.google.maps.HtmlInfoWindow()

You can display HTML elements in InfoWindow.

```
plugin.google.maps.HtmlInfoWindow();
```

-----------------------------------------------------------------------

## Demo code

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

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

![](image.gif)


## Note

If you want to execute inline javascript (such as onclick), you need to define the following meta tag in HTML.

```html
<!DOCTYPE html>
<html>
  <head>
    ...
    <meta http-equiv="Content-Security-Policy" content="default-src 'self' gap:; script-src 'self' 'unsafe-inline' 'unsafe-eval' data: 'unsafe-eval'; object-src *; style-src 'self' data: 'unsafe-inline' *; img-src 'self' data: *; media-src 'self' data:; font-src 'self' data:; connect-src *">
    ...
  </head>
  <body>
    ...
    <div id="map_canvas"></div>
  </body>
</html>
```
