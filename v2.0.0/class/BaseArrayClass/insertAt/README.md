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
