:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# baseArrayClass.setAt()

Sets an element at the specified index.

```js
var baseArray = new plugin.google.maps.BaseArrayClass([
  0, 1, 2, 3, 4, 5, 6, 7, 8, 9
]);

baseArray.setAt(4, 10);

var values = baseArray.getArray();

//values = [0, 1, 2, 10, 4, 5, 6, 7, 8, 9]
console.log(values);
```
