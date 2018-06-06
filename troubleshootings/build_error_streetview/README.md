[TroubleShootings](../README.md) > Can not build Google Street View

# Can not build Google Street View

You might see similar build error logs like below.


``` bash
$ cordova run android

...
Error: cmd: Command failed with exit code 1 Error output:
C:\Users\Sam\Documents\Tapir\tapir-client-v2\platforms\android\src\plugin\google\maps\PluginStreetViewPanorama.java:21: error: cannot find symbol
import com.google.android.gms.maps.model.StreetViewSource;
                                        ^
  symbol:   class StreetViewSource
  location: package com.google.android.gms.maps.model
C:\Users\Sam\Documents\Tapir\tapir-client-v2\platforms\android\src\plugin\google\maps\PluginStreetViewPanorama.java:93: error: cannot find symbol
          StreetViewSource source = "OUTDOOR".equals(cameraOpts.getString("source")) ?
          ^
  symbol:   class StreetViewSource
  location: class PluginStreetViewPanorama
C:\Users\Sam\Documents\Tapir\tapir-client-v2\platforms\android\src\plugin\google\maps\PluginStreetViewPanorama.java:94: error: cannot find symbol
              StreetViewSource.OUTDOOR : StreetViewSource.DEFAULT;
              ^
  symbol:   variable StreetViewSource
  location: class PluginStreetViewPanorama
C:\Users\Sam\Documents\Tapir\tapir-client-v2\platforms\android\src\plugin\google\maps\PluginStreetViewPanorama.java:94: error: cannot find symbol
              StreetViewSource.OUTDOOR : StreetViewSource.DEFAULT;
                                         ^
  symbol:   variable StreetViewSource
  location: class PluginStreetViewPanorama
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: Some input files use unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
4 errors

FAILURE: Build failed with an exception.
```


## Reason

The version of Google Play Services SDK you specify is too old.


## What version number should you specify?

Google keeps backward compatibility for Google Play Services.

If one plugin requests older version, but another plugin requests newer version, both plugins work on newer version without any problem typically.
(If it does not work, ask to the plugin developer.)

So, specifying the latest version of Google Play Services is better for most case.

https://developers.google.com/android/guides/releases


## Solution: specify the version of Google Play Services SDK

For example, you can specify `PLAY_SERVICES_VERSION` variable for the `cordova-plugin-googlemaps`.

```
$> cordova plugin add cordova-plugin-googlemaps \
  --variable API_KEY_FOR_ANDROID="..." \
  --variable API_KEY_FOR_IOS="..." \
  --variable PLAY_SERVICES_VERSION="15.0.0"
```

If you get a build error with other plugin conflicting, please see this page.
https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/troubleshootings/conflict_with_other_plugins/README.md
