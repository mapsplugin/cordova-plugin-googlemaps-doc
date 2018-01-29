# baseArrayClass.push()

Adds one element to the end of the array and returns the new length of the array.

<img src="./push_pop.png" width="500">

```js
var baseArray = new plugin.google.maps.BaseArrayClass();

var i;
for(i = 0; i < 10; i++) {
  baseArray.push(i);
}

var value = baseArray.pop();
console.log(value);  //value = 9
```
