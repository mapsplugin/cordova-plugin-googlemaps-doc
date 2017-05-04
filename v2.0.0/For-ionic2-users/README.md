# For ionic2 users

Thank you for using the cordova-googlemaps-plugin.

The cordova-googlemaps-plugin v2-beta is in public beta, the performance is improved.
The most of cases are no problem (I hope so).

However, if you use the [ionic-native-googlemaps](http://market.ionic.io/starters/google-maps) plugin with v2-beta version,
please watch your code.

The several method names and event names are changed in the v2-beta version.
Basically works the map, but you need to modify your code by yourself.

For more details, please read the [Migrate from v1 to v2](https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/Migrate-from-v1-to-v2) page.

Unfortunately, Masashi(@wf9a5m75) is not familiar with ionic.
So basically no support for the  [ionic-native-googlemaps](http://market.ionic.io/starters/google-maps) plugin.

## How to install the cordova-googlemaps-plugin v2-beta on Ionic 2
**The steps described are tested on Ionic 2 version 3.1.1**

### Ionic Native
The Ionic Native module that's available for the cordova-googlemaps-plugin is not yet modified to be compatible with the new v2-beta, so in this approach we will use Cordova directly.

### Install plugin
The first step is to activate your Google Maps SDK iOS / Android and obtain your keys from the Google API console. 

Then install the plugin:
```
cordova plugin add https://github.com/mapsplugin/cordova-plugin-googlemaps#multiple_maps --variable API_KEY_FOR_ANDROID="<YOUR KEY>" --variable API_KEY_FOR_IOS="<YOUR KEY>"
```

### Add template and css
Open up your desired <PAGE>.html and add a div that will contain the map.

```html
<ion-content>
  <div #map id="map" style="width:100%; height:100%;"></div>
</ion-content>
```

Then open up the corresponding <PAGE>.scss and add the following style. This will make sure the map is visible and disable the nav-decor div that will be on top.

```css
ion-app._gmaps_cdv_ .nav-decor{
  background-color: transparent!important;
  display:none!important;
}
```

Now open up your <PAGE>.ts file and import the following modules:

```javascript
import { Component, ViewChild, ElementRef } from '@angular/core';
import { NavController, Platform } from 'ionic-angular';
```

To make this direct cordova approach work in typescript we need to declare the plugin and cordova variables. Do this between the import and the @component section.

```javascript
declare var plugin: any;
declare var cordova: any;
```

Now add the reference to the map container in your page Class so we can use this to get the nativeElement.

```javascript
@ViewChild('map') theMap: ElementRef;
  map: any;
```

Now change the constructor to include the added Platform module by adding:

```javascript
public platform: Platform, 
```

This enables us to use the following which we place inside the constructor's brackets:

```javascript
platform.ready().then(() => {

  this.loadMap();

});
```

As you can see we call a loadMap function so let's add this function.

```javascript
loadMap() {
 
    console.log('Start loading MAP');

    let mapEle = this.theMap.nativeElement;
    this.map = new plugin.google.maps.Map.getMap(mapEle, {});

    console.log('Map should be loaded.');     

    this.map.one(plugin.google.maps.event.MAP_READY, () => {
      
      console.log("Map is ready.");
      
    });

}
```
Now you can build and take a look at your brand new map. Don't try to use `ionic serve` as this is a native module and thus will only be available on iOS and Android devices.

If you want to use a fullscreen map without any tabs or toolbar you will run in to a bug, resulting in a hidden map. Please see the following (https://github.com/mapsplugin/cordova-plugin-googlemaps/issues/1429 "#1429") to fix that problem.