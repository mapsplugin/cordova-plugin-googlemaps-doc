Generate a snapshot image of the map.

### Description
You can use snapshots within your application when an interactive map would be difficult, or impossible, to use. For example, images produced with the `Map.toDataURL()` method can be used to display a thumbnail of the map in your app.

The `Map.toDataURL()` method takes a few second for generating image, then the image data is passed to the callback as Base64 encoded image (PNG file format). You can use this image data to the HTML5 Canvas.

**Note:** Images of the map **MUST NOT** be transmitted to your servers, or otherwise used outside of the application. If you need to send a map to another application or user, send data that allows them to reconstruct the map for the new user instead of a snapshot.

-----

### code
```js
map.toDataURL(function(imageData) {
  var image = document.getElementById("snapshot");
  image.src = imageData;
});
```
