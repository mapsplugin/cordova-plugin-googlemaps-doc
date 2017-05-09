# baseArrayClass.forEach()

The forEach() method has two use case:
- [forEach(fn)](#forEach(fn)
- [forEach(fn, callback)](#forEach(fn, callback)

-----

## forEach(fn)

Iterate over each element, calling the provided function.
The function is called for each element like: fn(element, index).

```js

var baseArray = new plugin.google.maps.BaseArrayClass([
  1, 2, 3, 4, 5
]);

baseArray.forEach(function(element, idx) {
  console.log("baseArray[" + idx + "] = " + element);
});

console.log("done!");

// [output]
//   baseArray[0] = 1
//   baseArray[1] = 2
//   baseArray[2] = 3
//   baseArray[3] = 4
//   baseArray[4] = 5
//   done!
```

-----

## forEach(fn, callback)

If you want to do something asynchronously, this is useful way.

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
