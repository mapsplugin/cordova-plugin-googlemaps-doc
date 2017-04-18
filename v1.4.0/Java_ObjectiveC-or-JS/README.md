Google Maps Mobile SDKs bring better performance into your app, however, you need to understand Objective-C (for iOS) and Java (for Android).
If you are familiar with them, _you don't need to use this plugin_.

However if you are not, you may consider this plugin.
This plugin provides JavaScript API, which allows you to write down the code for using Google Maps Mobile SDKs.

<img src="https://lh3.googleusercontent.com/bJj1qzo2RPIgPpLVrZvChJp1-EUfiNmOdvePBWN27hPQ94MbEV5_9-lP3J0pGu9Incp5KP6siXeqEE7tPUIDwfBu0CjJQ-d7kUZmYwWRXLbry-0-zvlhccW5JJUwIuF59uS0" width="400">

For instance, **the code for adding a marker using this plugin** is like the below:

```js
var place = new LatLng(37.422858, -122.085065);
map.addMarker({
  'position': place,
  'title': ["Android Development",
   "using Cordova/PhoneGap",
   "and Google Maps Plugin!"].join("\n"),
  'snippet': "Thursday, March 20, 2014 / GDG Los Angeles"
}, function(marker) {
  marker.showInfoWindow();
});
```

It's very simple, isn't it?

**If you write the same code using Java …***
```java
GoogleMap map = ((MapFragment) getFragmentManager() .findFragmentById(R.id.map)).getMap();

GoogleMap.CancelableCallback callback = new GoogleMap.CancelableCallback() {
      @Override
      public void onFinish() {
           LatLng place = new LatLng(37.422858, -122.085065);

           Marker marker = map.addMarker(new MarkerOptions()
                			.title("Hello Google Maps for Cordova!")
               			.snippet("This plugin is awesome!")
               			.position(place));
           marker.showInfoWindow();
      }

      @Override
      public void onCancel() {}
});

int durationMS = 4000;
map.animateCamera(cameraUpdate, durationMS, callback);
```

**If you write the same code using Objective-C …**
```objective-c
 [CATransaction begin]; {
      [CATransaction setAnimationDuration: duration];

      [CATransaction setAnimationTimingFunction:
                [CAMediaTimingFunction functionWithName:
                                        kCAMediaTimingFunctionEaseIn]];

      [CATransaction setCompletionBlock:^{
        [self.commandDelegate sendPluginResult:
             pluginResult callbackId:command.callbackId];
      }];

      [self.mapCtrl.map animateToCameraPosition: cameraPosition];
 } [CATransaction commit];
```

---

Do you want to use Java and Objective-C, or JavaScript?
