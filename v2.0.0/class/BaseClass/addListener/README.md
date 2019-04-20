:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# baseClass.addListener() / on()

The baseClass.addListener()/on() methods catch the events you specified.
The `addListener()` method is the same as the `on()` method.

```js
var MyApp = function() {
  plugin.google.maps.BaseClass.apply(this);
};
MyApp.prototype = new plugin.google.maps.BaseClass();

// Create an instance of MyApp class.
var app = new MyApp();

// Let's catch the "MY_EVENT" event.
app.addEventListener("MY_EVENT", function(value) {

  // If you catch the "MY_EVENT", outputs the value you passed.
  console.log(value);
});

// You can trigger the "MY_EVENT" on the app variable any times.
app.trigger("MY_EVENT");

// You can pass your any data with the event.
app.trigger("MY_EVENT", {"Hello": "World"});
```
