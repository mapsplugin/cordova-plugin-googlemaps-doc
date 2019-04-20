:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# baseArrayClass.insertAt()

Inserts an element at the specified index.

```js
var baseArray = new plugin.google.maps.BaseArrayClass([
  1, 2, 3, 4, 5
]);

baseArray.insertAt(3, 10);

var jsArray = baseArray.getArray();

// [jsArray] = [1, 2, 3, 10, 4, 5]
```
