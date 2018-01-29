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
