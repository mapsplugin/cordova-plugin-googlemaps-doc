# baseArrayClass.filter(fn)

<img src="./filter.png" width="500">

```js

var baseArray = new plugin.google.maps.BaseArrayClass([
  1, 2, 3, 4, 5
]);

var results = baseArray.filter(function(value) {
  return value % 2 === 0;
});

console.log(results);

// [output]
//   results = [2, 4]
```
