# baseClass.addListenerOnce() / one()

The baseClass.addListenerOnce()/one() methods catch the events you specified, but **only at the first time**.
The `addListenerOnce()` method is the same as the `one()` method.

```js
var MyApp = function() {
  plugin.google.maps.BaseClass.apply(this);
};
MyApp.prototype = new plugin.google.maps.BaseClass();

// Create an instance of MyApp class.
var app = new MyApp();

// Let's catch the "MY_EVENT" event.
app.addListenerOnce("MY_EVENT", function(value) {

  // If you catch the "MY_EVENT", outputs the value you passed.
  console.log(value);
});

// You can trigger the "MY_EVENT" on the app variable any times.
app.trigger("MY_EVENT", "This is the first time");  // output

// You can pass your any data with the event.
app.trigger("MY_EVENT", "This is the second time"); // not output
```
