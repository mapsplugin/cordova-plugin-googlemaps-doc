The callback function will be involved with current your location as Location data.

### enableHighAccuracy option

You can specify `enableHighAccuracy` option that attempt to get your location with highest accuracy.

```js
var opts = {
  enableHighAccuracy: true
};
map.getMyLocation(opts, onSuccess, onError);
```

---
### Code
```js
var option = {
    enableHighAccuracy: true      // Force GPS
};
map.getMyLocation(option, onLocationSuccess, onLocationError);

function onLocationSuccess( result ) {
    alert(JSON.stringify( result, null, 4 ));
}
function onLocationError( error_msg ) {
    alert( error_msg );
}
```
![](image1.png)
