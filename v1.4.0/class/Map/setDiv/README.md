Embed a map into the specified DOM node.

### Description
Display the map at the specified DOM position.
Declare the container DOM (such as DIV), then specify it.
```html
<div id='map_canvas' style='width:300px;height:300px'></div>
```
```js
var div = document.getElementById('map_canvas');
map.setDiv(div);
```
![embed map](image1.gif)

#### _important_
You must need to understand how to work this feature.
The plugin does not watch any effects for the DOM element, such as CSS position changing, dead or alive.
It means you can just tell the size and the position of the DOM element when you run `Map.setDiv()`.
If you want to change the position of the map with the DOM element,
you need to call [Map.refreshLayout()](../refreshLayout/README.md) (Don't too much).

Also, the map draws in the native view over the HTML browser view.
This means you can not overlay any HTMLs above the map.

#### _CSS transition_
Many CSS frameworks loves CSS transition because it's easy and powerful.
But W3C does not define the start event for CSS transition.
It means the plugin can not detect when the CSS transition starts.

One of the common questions is `How to slide the map with CSS?`.
This plugin does not watch the CSS positions and the above reason,
you need to take care the map position by yourself.

One solution is that if your Javascript can detect when the div slides, you can generate an image data using [Map.toDataURL()](../toDataURL/README.md). You can pass it to &lt;img&gt; tag.
It means:

1. generate the image using toDataURL()
2. then insert the map div, and hide the map
3. the sliding start
4. show the map, and remove the image when the sliding is finished.

However [Map.toDataURL()](../toDataURL/README.md) takes a few time (how long is depends on device).
As far as my test, Android works good with this idea, but iPhone takes the time longer.

![Slide bar](image2.gif)
