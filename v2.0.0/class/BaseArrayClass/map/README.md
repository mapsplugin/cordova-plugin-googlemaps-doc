:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# baseArrayClass.map(fn)

<img src="./map.png" width="500">

```js

var baseArray = new plugin.google.maps.BaseArrayClass([
  1, 2, 3, 4, 5
]);

var results = baseArray.map(function(element, idx) {
  return element * 2;
});

// results = [2, 4, 6, 8, 10]
console.log(results);
```
