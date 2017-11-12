# Release notes for @ionic-native version 4.4.0

- ## Update: accepts own properties (except GoogleMapOptions)

  The original JS plugin accepts custom properties when you create overlays.
  For example:

  ```js
  map.addMarker({
    position: {lat: ..., lng: ...},
    customProperty1: "customValue1",
    customProperty2: "customValue2"
  }, function(marker) {
    var value = marker.get("customProperty1");
  });
  ```

  As of @ionic-native/google-maps v4.4.0, you can write this code as well.

  ```TypeScript
  map.addMarker({
    position: {lat: ..., lng: ...},
    customProperty1: "customValue1",
    customProperty2: "customValue2"
  }).then((marker: Marer) => {
    let value = marker.get("customProperty1");
  });
  ```

- ## Bug fix: Static classes are defined as non static classes

  The `GoogleMaps`, `Environment`, `Geocoder`, `Spherical` and `Poly(new)` classes are static class.
  However until @ionic-native/google-maps v4.3.3, these classes were defined as non static classes.

  The problem is you can create multiple instance from their.
  For example, you can do like this code.

  ```TypeScript
  let env1: Environment = new Environment();
  let env2: Environment = new Environment();

  env1.setBackgroundColor('red');
  env2.setBackgroundColor('blue');
  ```

  As of @ionic-native/google-maps v4.4.0, you need to write like this:
  ```TypeScript
  Environment.setBackgroundColor('red');
  ```

  As the same way, the way of creating a map is changed.

  **before**

  ```TypeScript
  export class HomePage {

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
      this.map = this.googleMaps.create('map_canvas');
      this.map.one(GoogleMapsEvent.MAP_READY).then(() => {
        ...
      });
    }
  }
  ```

  **after**

  ```TypeScript
  export class HomePage {

    map: GoogleMap;

    constructor(
      public navCtrl: NavController,
      public toastCtrl: ToastController) {  // <-- no longer need to define in constructor
    }

    ionViewDidLoad() {
      this.loadMap();
    }

    loadMap() {
      this.map = GoogleMaps.create('map_canvas');  // <-- changed
      this.map.one(GoogleMapsEvent.MAP_READY).then(() => {
        ...
      });
    }
  }

  ```

- ## Add: poly utility methods

  Add: [poly.containsLocation()](https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.0.0/class/utilities/geometry/poly/containsLocation/README.md) and [poly.isLocationOnEdge()](https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.0.0/class/utilities/geometry/poly/isLocationOnEdge/README.md) methods.
