:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# baseArrayClass.filterAsync(fn, callback)

<img src="./filterAsync.png" width="500">

```js

var baseArray = new plugin.google.maps.BaseArrayClass([
  1, 2, 3, 4, 5
]);

baseArray.filterAsync(function(value, next) {
  setTimeout(function() {
    next(value % 2 === 0);
  }, 100);
}, function(results) {
  console.log(results);
});


// [output]
//   results = [2, 4]
```
