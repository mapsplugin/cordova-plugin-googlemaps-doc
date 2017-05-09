# Release notes v2.0-beta2

## May/9/2017

### Add

- [map.animateCameraZoomIn()](../class/Map/animateCameraZoomIn/REAMDE.md),
[map.animateCameraZoomOut()](../class/Map/animateCameraZoomOut/REAMDE.md),
[map.moveCameraZoomIn()](../class/Map/moveCameraZoomIn/REAMDE.md), and
[map.moveCameraZoomOut()](../class/Map/moveCameraZoomOut/REAMDE.md)

- [BaseArrayClass.forEach(fn, callback)](../class/BaseArrayClass/forEach/README.md)

- [BaseArrayClass.map(fn, callback)](../class/BaseArrayClass/map/README.md)

### Update

- [map.getVisibleRegion()] method returns the values synchronously.

```js
// Before
map.getVisibleRegion(function(latLngBounds) {

});

// After
var latLngBounds = map.getVisibleRegion();
```

### Bug fix

- marker.remove() (and other overlays) does not work sometimes.

- small bugs are fixed
