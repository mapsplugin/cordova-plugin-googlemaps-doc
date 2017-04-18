Google Maps Javascript API v3 works perfectly in PhoneGap/Cordova, but the performance is not good when the app uses mobile network. Also, it's not as smooth as the native SDK. Furthermore, the native APIs do not have [usage limits](https://developers.google.com/maps/faq#usage-limits).

### Google Maps Javascript API
Google Maps JavaScript API loads a lot of image data for a map tile.

For instance, a map tile is a png image with a size of 12.6KB.

![screen shot 2014-07-16 at 10 37 03 pm](https://cloud.githubusercontent.com/assets/167831/3609200/b021765a-0d74-11e4-8bf3-b16f5c77a976.png)

In the image below, the map loads 9 map tiles (= 9 map images) at least.
This means, drawing the map below will download 113.4KB (= 12.6KB * 9) of image data.

![screen shot 2014-07-16 at 10 42 35 pm](https://cloud.githubusercontent.com/assets/167831/3609219/2f7ca618-0d75-11e4-96d9-2350db3b635b.png)

You may not feel inconvenience about the map when you're browsing using your desktop browser, because your desktop environment has much more memory and faster a CPU than your mobile device.

The value of 113.4KB is a lot of data for a mobile device.
In generally, the mobile network speed is less than WiFi internet, and your device has less memory and less CPU power than your laptop.
It means loading map tiles takes a few seconds.
If you zoom in the map, the map will load 113.4KB again.

### Google Maps mobile SDKs
Google provides Google Maps Android API v2 and Google Maps SDK for iOS.
They load only map data for drawing map tiles, then the SDK draws the map.
It's probably less than 12.6KB. (vector data)

![js_and_sdk](https://cloud.githubusercontent.com/assets/167831/3609503/dab97b2c-0d7b-11e4-8f1a-8bd265d83aac.png)

This is the most different point between Google Maps JavaScript API and Google Maps Mobile SDKs.
Using Google Maps Mobile SDKs brings more performance into your app.
