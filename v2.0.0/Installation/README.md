# Installation

The latest Cordova-cli version is recommended.

And please install the plugin from the **multiple_maps** branch.

```
$> cordova --version
6.3.1  // At least 6.2.0 is good.

$> npm cache clean


$> cordova create myApp org.apache.cordova.myApp myApp

$> cd myApp

$> cordova platform add android

$> cordova platform add ios

// Add the SDK plugin at first with --nofetch option
$> cordova plugin add https://github.com/mapsplugin/cordova-plugin-googlemaps-sdk --nofetch

$> cordova plugin add https://github.com/mapsplugin/cordova-plugin-googlemaps#multiple_maps \
     --variable API_KEY_FOR_ANDROID="<YOUR KEY>" \
     --variable API_KEY_FOR_IOS="<YOUR KEY>" \
     --nofetch
```
