:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# baseArrayClass.forEachAsync(fn, callback)

<img src="./forEachAsync.png" width="500">

```js

var baseArray = new plugin.google.maps.BaseArrayClass([
  1, 2, 3, 4, 5
]);

baseArray.forEach(function(element, cb) {

  setTimeout(function() {
    console.log("baseArray[" + idx + "] = " + element);
    cb();
  }, 10);

}, function() {
  console.log("finish!");
});

console.log("done!");

// [output]
//   done!
//   baseArray[0] = 1
//   baseArray[1] = 2
//   baseArray[2] = 3
//   baseArray[3] = 4
//   baseArray[4] = 5
//   finish!
```
