Change the angle of the camera view.

### Description
Changes only the viewing angle of the camera (in degrees).
This value will be clamped to a minimum of zero (i.e., facing straight down) and between 30 and 45 degrees towards the horizon, depending on the relative closeness to the earth.

![Tilt](image.gif)

-----

### code
```js
map.setTilt(30);
```
