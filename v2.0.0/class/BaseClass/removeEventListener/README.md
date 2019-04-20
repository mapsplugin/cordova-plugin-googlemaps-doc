:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# baseClass.removeEventListener() / off()

The baseClass.removeEventListener()/off() methods remove the event listeners that you attached.
The `removeEventListener()` method is the same as the `off()` method.

There are three usage ways:
- `baseClass.removeEventLister("myEvent", callbackFunc);`
- `baseClass.removeEventLister("myEvent");`
- `baseClass.removeEventLister();`

## baseClass.removeEventLister("myEvent", callbackFunc);

When you execute this method with your callback function,
the plugin detach only the callbackFunc.

For example:

```js
function onMyEvent1() {
  console.log("onMyEvent1");
}
function onMyEvent2() {
  console.log("onMyEvent2");
}

var MyApp = function() {
  plugin.google.maps.BaseClass.apply(this);
};
MyApp.prototype = new plugin.google.maps.BaseClass();

// Create an instance of MyApp class.
var app = new MyApp();

// Let's catch the "MY_EVENT" event with the callback function `onMyEvent1` and `onMyEvent2`.
app.addEventListener("MY_EVENT", onMyEvent1);
app.addEventListener("MY_EVENT", onMyEvent2);

// You can trigger the "MY_EVENT" on the app variable
app.trigger("MY_EVENT");    // output
                            //   onMyEvent1
                            //   onMyEvent2

// Let's remove the onMyEvent1 listener only
app.removeEventListener("MY_EVENT", onMyEvent1);

// And trigger the event again.
app.trigger("MY_EVENT");    // output
                            //   onMyEvent2

```



## baseClass.removeEventLister("myEvent");

If you omit your callback function, the plugin detaches all event listeners for the event name.

```js
// Create an instance of MyApp class.
var app = new MyApp();

// Let's catch the "MY_EVENT" event with the callback function `onMyEvent1` and `onMyEvent2`.
app.addEventListener("MY_EVENT", onMyEvent1);
app.addEventListener("MY_EVENT", onMyEvent2);

// You can trigger the "MY_EVENT" on the app variable
app.trigger("MY_EVENT");    // output
                            //   onMyEvent1
                            //   onMyEvent2

// Let's remove all listeners
app.removeEventListener("MY_EVENT");

// And trigger the event again.
app.trigger("MY_EVENT");    // no output
```


## baseClass.removeEventLister();

If you omit even the event name, the plugin detaches all event listeners of the variable.


```js
// Create an instance of MyApp class.
var app = new MyApp();

// Let's catch the "MY_EVENT" event with the callback function `onMyEvent1` and `onMyEvent2`.
app.addEventListener("MY_EVENT", onMyEvent1);
app.addEventListener("MY_EVENT", onMyEvent2);

// Let's catch the "ANOTHER_EVENT" event.
app.addEventListener("ANOTHER_EVENT", function() {
  console.log("ANOTHER_EVENT");
});

// You can trigger the "MY_EVENT" on the app variable
app.trigger("MY_EVENT");    // output
                            //   onMyEvent1
                            //   onMyEvent2

// Let's remove all listeners
app.removeEventListener();

// And trigger the event again.
app.trigger("MY_EVENT");    // no output
app.trigger("ANOTHER_EVENT");    // no output
```
