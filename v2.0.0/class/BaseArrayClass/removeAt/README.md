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
