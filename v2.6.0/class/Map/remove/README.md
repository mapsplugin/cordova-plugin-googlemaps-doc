:green_heart: This is the latest document.

# map.remove()

Destroy a map completely.

```
map.remove(callback);
```


## Parameters

name     | type      | description
---------|-----------|----------------------
callback | Function  | (optional) callback
--------------------------------------------


## Demo code

```html
<div class="map" id="map_canvas">
    <span class="smallPanel"><button>Click here</button></span>
</div>
```

```js
var div = document.getElementById("map_canvas");
var map = plugin.google.maps.Map.getMap(div);

var button = div.getElementsByTagName('button')[0];
button.addEventListener('click', function() {
  map.remove();
});

```

![](image.gif)
