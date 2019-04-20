:warning: **This document is aim for older versions (from 2.0.0 to 2.2.9).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# baseClass.bindTo()

The `bindTo()` method synchronizes the value between two-objects.
If the value assigned with `key` is changed, the value assigned with `targetKey` also changed.

If you omit the `targetKey`, `targetKey` is the same as `key`.

If `noNotify` is true, `(targetKey)_changed` event is not fired when the bindTo() method is executed.

```js
var objectA = new plugin.google.maps.BaseClass();

var objectB = new plugin.google.maps.BaseClass();

objectA.set("hello", "world");

// sync objectB.hello = objectA.hello
objectA.bindTo("hello", objectB);

objectA.set("hello", "こんにちは");  // set another value.

console.log(objectB.get("hello")); // == "こんにちは"
```
