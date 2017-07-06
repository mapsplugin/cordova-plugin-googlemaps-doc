# baseClass.trigger()

The `trigger()` method fires an event with your data.
You can execute multiple event listers for one event.

```js
var MyApp = function() {
  plugin.google.maps.BaseClass.apply(this);
};
MyApp.prototype = new plugin.google.maps.BaseClass();

// Create an instance of MyApp class.
var app = new MyApp();

// Let's catch the "MY_EVENT" event.
app.addEventListener("MY_EVENT", function(data1, data2) {
  console.log(data1 + " = " + data2);
});
app.addEventListener("MY_EVENT", function() {
  alert(data1 + " = " + data2);
});

// You can trigger the "MY_EVENT" on the app variable any times.
app.trigger("MY_EVENT");

// You can pass your any data with the event.
app.trigger("MY_EVENT", "Hello", "world!");
```
