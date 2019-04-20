# Release notes version 2.6.0

## API Key

cordova-plugin-googlemaps version 2.6.0 changes installation way.
From this version, you need to specify your API key in `config.xml` file.

```xml
<widget ...>
  ...
  <preference name="GOOGLE_MAPS_ANDROID_API_KEY" value="(api key)" />
  <preference name="GOOGLE_MAPS_IOS_API_KEY" value="(api key)" />
  ...
</widget>
```

Installation of this plugin becomes easy. Just install this plugin like other ones.

```
$> cordova plugin add cordova-plugin-googlemaps
```

## Cordova 9

Support cordova version 9.

## TBD: ionic/capacitor support
