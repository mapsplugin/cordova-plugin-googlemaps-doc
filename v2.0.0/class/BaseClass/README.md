# Base class

The Base class is designed for MVC(Model-View-Controller). MVC helps you to write your code Model, View and Controller separately.

The [Map](../Map/README.md),[Marker](../Marker/README.md),
[Polyline](../Polyline/README.md),[Polygon](../Polygon/README.md),
[Circle](../Circle/README.md),[TileOverlay](../TileOverlay/README.md),
and [GroundOverlay](../GroundOverlay/README.md) classes extend this class.

-----

## Description

### Create your class that inherited BaseClass

```js
// First, create MyClass inherited BaseClass.
var MyClass = function() {
  plugin.google.maps.BaseClass.apply(this);
};
MyClass.prototype = new plugin.google.maps.BaseClass();

// Second, create an instance of MyClass; "myObject". The myObject watches "BUTTON_CLICK" event.</p>
var myObject = new MyClass();
myObject.addEventListener("BUTTON_CLICK", function() {
  alert("Button is clicked!");
});

var button = document.getElementById("button");
button.addEventListener("click", function() {
  myObject.trigger("BUTTON_CLICK");
});
```

### addEventListener() and removeEventListener()

In order to watch an event, you need to add an event listener.</p>

```js
myObject.addEventListener("BUTTON_CLICK", onButtonClick);

function onButtonClick() {
  alert("Button is clicked!");
}
```

Removing the event listener, you need to specify the listener function with the event name.

```js
myObject.removeEventListener("BUTTON_CLICK", onButtonClick);
```

If you want to remove all event listeners for the event, you can omit the listener.

```js
myObject.removeEventListener("BUTTON_CLICK");
```

Or, if you want to remove all event listeners, you can omit the parameters.

```js
myObject.removeEventListener();
```

`on()` and `off()` methods are the same as `addEventListener()` and `removeEventListener()`.


### trigger()

You can dispatch your event with your data. This is useful to write down your code separately.

```js
function onMyEvent(data1, data2) {
  var myObject = this;
  alert(data1 + " " + data2);
}

myObject.on("my event", onMyEvent);

myObject.trigger("my event", "Hello", "World");
```

### set() and get()</h3>

You can set your value for own purpose using set() method.

```js
myObject.set("message", "Hello");

alert(myObject.get("message"));
```

### (property name)_changed event

(property name)_changed event occurs when the value is changed for the property name.

```js
myObject.set("message", "Hello");

myObject.on("message_changed", function() {
  alert("new message: " + this.get("message");
});

myObject.set("message", "world");
```

-----

## Constructor

<table>
    <tr>
        <th>BaseClass()</th>
        <td>Creates an MVCObject.</td>
    </tr>
</table>

## Methods
<table>
    <tr>
        <th>addListener(eventName:string, handler:Function)</th>
        <td>Adds the given listener function to the given event name.</td>
    </tr>
    <tr>
        <th>addListenerOnce(eventName:string, handler:Function)</th>
        <td>Adds the given listener function to the given event name. This event listener works only at once.</td>
    </tr>
    <tr>
        <th>get(key:string)</th>
        <td>Gets a value.</td>
    </tr>
    <tr>
        <th>set(key:string, value:*)</th>
        <td>Sets a value.</td>
    </tr>
    <tr>
        <th>removeEventListener(eventName?:string, callback?:function)</th>
        <td>Remove the event listener. If you omit both parameters, all event listeners that added to the object are removed.</td>
    </tr>
    <tr>
        <th>on(eventName:string, handler:Function)</th>
        <td>The same as addListener.</td>
    </tr>
    <tr>
        <th>one(eventName:string, handler:Function)</th>
        <td>The same as addListenerOnce.</td>
    </tr>
    <tr>
        <th>off(eventName?:string, callback?:function)</th>
        <td>The same as removeEventListener.</td>
    </tr>
    <tr>
        <th>empty()</th>
        <td>Clear all stored values</td>
    </tr>
    <tr>
        <th>trigger(eventName:string, parameters...)</th>
        <td>Dispatch an event with given name and parameters.</td>
    </tr>
</table>
