# Google Maps plugin of Ionic native 4.0

The Google Maps plugin of the Ionic native 4.0 uses the cordova-googlemaps-plugin v2.0,
Since the Google Maps plugin of the ionic native was written by Ionic team, code style is little different.
But the most of all methods are the same as the original version.

## The documentation

The ionic team creates a wrapper plugin of this plugin in order to use this plugin with typescript.
You can read documents at https://ionic-site-staging.herokuapp.com/docs/native/google-maps/

## Installation

### 1. Install the Cordova and Ionic Native plugins:

```
$ ionic cordova plugin add https://github.com/mapsplugin/cordova-plugin-googlemaps#multiple_maps --variable API_KEY_FOR_ANDROID="YOUR_ANDROID_API_KEY_IS_HERE" --variable API_KEY_FOR_IOS="YOUR_IOS_API_KEY_IS_HERE"

$ npm install --save @ionic-native/google-maps
```

### 2. [Add this plugin to your app's module](https://ionicframework.com/docs/native/#Add_Plugins_to_Your_App_Module)


## Supported platforms

- Android
- iOS

## Usage

Example code files: 

[src/app/app.component.ts](https://github.com/mapsplugin/ionic-googlemaps-quickdemo/blob/master/src/app/app.component.ts)

```TypeScript
export class MyApp {
  @ViewChild(Nav) nav: Nav;

  rootPage: any;  // <<< Do not set the root page until the platform.ready()
                  //      This avoids to face the plugin loading error.

  pages: Array<{title: string, component: any}>;

  constructor(public platform: Platform, public statusBar: StatusBar, public splashScreen: SplashScreen) {
    this.initializeApp();
  }

  initializeApp() {
    this.platform.ready().then(() => {
      this.rootPage = HomePage;    // <<< Set the first page after native side is ready.
      
      this.statusBar.styleDefault();
      this.splashScreen.hide();
    });
  }
  openPage(page) {
    this.nav.setRoot(page.component);
  }
}
```


[pages/home/home.ts](https://github.com/mapsplugin/ionic-googlemaps-quickdemo/blob/master/src/pages/home/home.ts)

```TypeScript
import { Component } from "@angular/core/";
import {
  GoogleMaps,
  GoogleMap,
  GoogleMapsEvent,
  Marker,
  GoogleMapsAnimation,
  MyLocation
} from '@ionic-native/google-maps';

import { Platform } from 'ionic-angular';
@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  mapReady: boolean = false;
  map: GoogleMap;

  constructor(
    public navCtrl: NavController,
    public toastCtrl: ToastController,
    private googleMaps: GoogleMaps) {
  }

  ionViewDidLoad() {
    this.loadMap();
  }

  loadMap() {
    // Create a map after the view is ready and the native platform is ready.
    this.map = this.googleMaps.create('map_canvas', {
      camera: {
        target: {
          lat: 43.0741704,
          lng: -89.3809802
        },
        zoom: 18,
        tilt: 30
      }
    });

    // Wait the maps plugin is ready until the MAP_READY event
    this.map.one(GoogleMapsEvent.MAP_READY).then(() => {
      this.mapReady = true;
    });
  }

  onButtonClick() {
    if (!this.mapReady) {
      this.showToast('map is not ready yet. Please try again.');
      return;
    }
    this.map.clear();

    // Get the location of you
    this.map.getMyLocation()
      .then((location: MyLocation) => {
        console.log(JSON.stringify(location, null ,2));

        // Move the map camera to the location with animation
        return this.map.animateCamera({
          target: location.latLng,
          zoom: 17,
          tilt: 30
        }).then(() => {
          // add a marker
          return this.map.addMarker({
            title: '@ionic-native/google-maps plugin!',
            snippet: 'This plugin is awesome!',
            position: location.latLng,
            animation: GoogleMapsAnimation.BOUNCE
          });
        })
      }).then((marker: Marker) => {
        // show the infoWindow
        marker.showInfoWindow();

        // If clicked it, display the alert
        marker.on(GoogleMapsEvent.MARKER_CLICK).subscribe(() => {
          this.showToast('clicked!');
        });
      });
  }

  showToast(message: string) {
    let toast = this.toastCtrl.create({
      message: message,
      duration: 2000,
      position: 'middle'
    });

    toast.present(toast);
  }
}
```

[pages/home/home.html](https://github.com/mapsplugin/ionic-googlemaps-quickdemo/blob/master/src/pages/home/home.html)

```html
<ion-header>
  <ion-navbar>
    <button ion-button menuToggle>
      <ion-icon name="menu"></ion-icon>
    </button>
    <ion-title>Home</ion-title>
  </ion-navbar>
</ion-header>

<ion-content padding>
  <h3>Ionic GoogleMaps Demo</h3>
  <p>
  This is a demo application of <b>@ionic-native/google-maps</b> plugin.
  </p>
  <div id="map_canvas">
    <button ion-button (click)="onButtonClick($event)">Demo</button>
  </div>
</ion-content>
```

[src/pages/home/home.scss](https://github.com/mapsplugin/ionic-googlemaps-quickdemo/blob/master/src/pages/home/home.scss)

```css
page-home {
  #map_canvas {
    height: 90%;
  }
}
```

