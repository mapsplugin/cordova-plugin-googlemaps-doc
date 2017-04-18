Close the map dialog.

### Description
Close the map dialog when the map is full screen.

The `MAP_CLOSE` event raises when the map dialog is closed.

If you call the [Map.showDialog()](../showDialog/README.md) from the embedded map, the map goes back to the same position when the dialog is closed.

-----

### code
```js
var button = document.getElementById("button");
button.addEventListener("click", function() {
  map.showDialog();

  setTimeout(function() {
    map.closeDialog();
  }, 10000);
});
```
