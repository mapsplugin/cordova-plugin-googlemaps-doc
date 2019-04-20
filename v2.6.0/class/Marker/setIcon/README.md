:green_heart: This is the latest document.

# marker.setIcon()

Change the marker icon.(Same as the icon property of the `map.addMarker()` method)

```
marker.setIcon(icon);
```

## Parameters

name           | type               | description
---------------|--------------------|---------------------------------------
icon           | string, MarkerIcon | icon property
-----------------------------------------------------------------------------



### MarkerIcon

name           | type                             | description
---------------|----------------------------------|--------------------------------
url            | string                           | url or filepath to icon file
size           | {width: number, height: number}  | dimension of the icon image (You can resize the icon image)
-----------------------------------------------------------------------------------


## Demo code

```html
<div id="map_canvas"></div>
```

```js
var locations = [
  {lat:41.79883, lng:140.75675}
  {lat:41.799240000000005, lng:140.75875000000002},
  {lat:41.797650000000004, lng:140.75905},
  {lat:41.79637, lng:140.76018000000002},
  {lat:41.79567, lng:140.75845},
  {lat:41.794470000000004, lng:140.75714000000002}
];

var mapDiv = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(mapDiv);

// Create markers
var markers = locations.map(function(location, idx) {
  return map.addMarker({
    position: location
    title: idx
  });
});

// Usage 1: Just specify the path to icon file.
markers[0].one(plugin.google.maps.event.MARKER_CLICK, function() {
  var marker = this;
  marker.setIcon("../images/number-1-icon.png");
});

// Usage 2: Just specify the url of icon file.
markers[1].one(plugin.google.maps.event.MARKER_CLICK, function() {
  var marker = this;
  marker.setIcon("http://icons.iconarchive.com/icons/iconarchive/red-orb-alphabet/24/Number-2-icon.png");
});

// Usage 3: Specify icon url and size
markers[2].one(plugin.google.maps.event.MARKER_CLICK, function() {
  var marker = this;
  marker.setIcon({
    url: "http://icons.iconarchive.com/icons/iconarchive/red-orb-alphabet/48/Number-3-icon.png",
    size: {
      width: 24,
      height: 24
    }
  });
});

// Usage 4: Specify HTML color name
markers[3].one(plugin.google.maps.event.MARKER_CLICK, function() {
  var marker = this;
  marker.setIcon("blue");
});


// Usage 5: Base64 encoded image (gif,png, and jpg)
markers[4].one(plugin.google.maps.event.MARKER_CLICK, function() {
  var marker = this;
  marker.setIcon("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAACVUlEQVRIS8WWjVXCMBRGwwTqBMIEuAG4ARuIE6gTKBOgEyAT4AbABjKBMIE/C+h3m6S2pWlJ8BzfOTkpad6770teEzom3bZy/VbrpYTopDjJZ6w2c77X6p9j46SCUXvuYDxHq04BZ2rPHXa3y/DRqlPAmdqZW+hrkMZEq44F52q3oGTdrjEpqmPBudoxKVBVKqsU1THgPbW+klNUt4GHCn6idqEGuMveerUeXFGtNTCvah9qaz+n2gMmKMGBnLrfjPFcMirZ7231XUF19RUJkIhPZqXnT8AM9Osy62v0VPihUqIfjWwx1RkJvbxIpjArhabfbEJ6zQYwysiiT3CW8kJ6Q4BgqMALEnqVNAqQZGSkM/R7nMOBLhZ/B/ZQeg9V/1EsrpLy5dIqP8aAXV6WlQIlZrWq/wzeBK0DM3Y0vA0aAh8FPwTaBC7B2W8+qUOMT4l9dYUUrJK2k4tCOHl7O7zK+Xx69nbWU/iebgKz1+9E+OYPToR1fqOe+SquujeBWdzlYGBPohhjW9b2lGbRa72bwLdyml5d2auvaPyeTOzIw4MxzCkal8h8no3cqT3WJd0ExuFmOjXmlhRIXbnfKZQ7hfJ4HDTM8wVIMi6xJ01y3mV8E5glGlDRGIEKS75DrAtFn/0DA3x/b0ddZbPgGt23JnBW0agpKPzUGCvhoT4iv1HG9Zodtc6HGBTYnoXAXc3UR5SbBwK1d8y+8RUAzxNwU2orOwQeyolF/lLT7mUqQ8BqCj4Bt+j1lR0Cs3Sopt8GFLYNF/2JU7K2k6stePL7fwP/AER2xy+mY1/QAAAAAElFTkSuQmCC");
});


// Usage 6: relative path
markers[5].one(plugin.google.maps.event.MARKER_CLICK, function() {
  var marker = this;
  marker.setIcon(window.location.href.replace(/\/([^\/]+)$/, "") + "/../images/number-6-icon.png");
});

```

![](image.gif)
