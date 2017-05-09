# Installation

The latest Cordova-cli version is recommended.

And please install the plugin from the **multiple_maps** branch.

```
$> cordova --version
6.3.1  // At least 6.2.0 is good.

$> cordova platform add android@latest ios@latest

$> cordova plugin add https://github.com/mapsplugin/cordova-plugin-googlemaps#multiple_maps \
     --variable API_KEY_FOR_ANDROID="<YOUR KEY>" \
     --variable API_KEY_FOR_IOS="<YOUR KEY>" \
     --nofetch
```
