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
