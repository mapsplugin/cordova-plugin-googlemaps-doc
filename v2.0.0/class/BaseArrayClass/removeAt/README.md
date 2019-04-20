:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# baseArrayClass.removeAt()

Removes an element from the specified index.

```js
var baseArray = new plugin.google.maps.BaseArrayClass([
  0, 1, 2, 3, 4, 5, 6, 7, 8, 9
]);

baseArray.removeAt(4);

var values = baseArray.getArray();

//values = [0, 1, 2, 4, 5, 6, 7, 8, 9]
console.log(values);
```
