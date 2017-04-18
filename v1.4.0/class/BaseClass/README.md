The BaseClass constructor is guaranteed to be an empty function, and so you may inherit from BaseClass by simply writing MySubclass.prototype = new plugin.google.maps.BaseClass();. Unless otherwise noted, this is not true of other classes in the API, and inheriting from other classes in the API is not supported.

[Map](../Map/README.md), [Marker](../Marker/README.md), [Circle](../Circle/README.md), [Polyline](../Polyline/README.md), [Polygon](../Polygon/README.md), [Tile Overlay](../TileOverlay/README.md), [Ground Overlay](../GroundOverlay/README.md) and [Kml Overlay](../KmlOverlay/README.md) classes inherit BaseClass.

### Create your class that inherited BaseClass

First, create MyClass inherited BaseClass.
```js
var MyClass = function() {
  plugin.google.maps.BaseClass.apply(this);
};
MyClass.prototype = new plugin.google.maps.BaseClass();
```

Second, create an instance of MyClass; "myObject".
The myObject watches "BUTTON_CLICK" event.
```js
var myObject = new MyClass();
myObject.addEventListener("BUTTON_CLICK", function(buttonId) {
  alert("BUTTON_CLICK: " + buttonId);
});
```

You can trigger your custom event using `trigger`.
```js
var button = document.getElementById("button");
button.addEventListener("click", function() {
  myObject.trigger("BUTTON_CLICK", button.id);
});
```

***

### addEventListener() and removeEventListener()
In order to watch an event, you need to add an event listener.
```js
map.addEventListener(plugin.google.maps.event.MAP_CLICK, onMapClicked);

function onMapClicked(latLng) {
  var map = this;
  alert(latLng. toUrlValue());
}
```

Removing the event listener, you need to specify the listener function with the event name.
```js
map.removeEventListener(plugin.google.maps.event.MAP_CLICK, onMapClicked);
```

If you want to remove all event listeners for the event, you can omit the listener.
```js
map.removeEventListener(plugin.google.maps.event.MAP_CLICK);
```

Or, if you want to remove all event listeners, you can omit the parameters.
```js
map.removeEventListener();
```

`on()` and `off()` are the same as `addEventListener()` and `removeEventListener()`.

***

### trigger()
You can dispatch your event with your data.
This is useful to write down your code separately.
```js
function onMyEvent(data1, data2) {
  var map = this;
  alert(data1 + " " + data2);
}

map.on("my event", onMyEvent);

map.trigger("my event", "Hello", "World");
```

***

### set() and get()
You can set your value for own purpose using `set()` method.
```js
map.set("message", "Hello");
```

Then you can get the value.
```js
alert(map.get("message"));
```

***

### `_changed` event
`(property name)_changed` event occurs when the value is changed for the property name.
```js
map.set("message", "Hello");

map.on("message_changed", function() {
  alert("new message: " + this.get("message");
});

map.set("message", "world");
```

# Base Class Reference

Method | Return value | Description
----|------|----
addListener(eventName:string, handler:Function) | void | Adds the given listener function to the given event name.
addListenerOnce(eventName:string, handler:Function) | void | Adds the given listener function to the given event name. This event listener works only at once.
get(key:string) | * | Gets a value.
set(key:string, value:*) | void | Sets a value.
removeEventListener(eventName?:string, callback?:function) | void | Remove the event listener. If you omit both parameters, all event listeners that added to the object are removed.
on(eventName:string, handler:Function) | void | Alias of addListener.
one(eventName:string, handler:Function) | void | Alias of addListenerOnce.
off(eventName?:string, callback?:function) | void | Alias of removeEventListener.
empty() | void | Clear all stored values
trigger(eventName:string, parameters...) | void | Dispatch an event with given name and parameters.
