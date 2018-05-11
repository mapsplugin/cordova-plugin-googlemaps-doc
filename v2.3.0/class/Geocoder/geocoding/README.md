# Geocoding

## Basic usage

This plugin supports geocoding. You can convert address or landscape names to latitude and longitude.

In Android, this plugin uses Google Play Services feature, while in iOS this plugin uses iOS feature (not Google).
It means the geocoding results are different on Android and iOS.

```html
<div id="map_canvas1">
  <span class="smallPanel"><input  type="text" value="Kyoto, Japan"><button>Search</button></span>
</div>
```

```js
var mapDiv = document.getElementById("map_canvas1");
var map = plugin.google.maps.Map.getMap(mapDiv);

var isRunning = false;
var inputField = mapDiv.getElementsByTagName("input")[0];
var button = mapDiv.getElementsByTagName("button")[0];
button.addEventListener("click", function() {
  if (isRunning) {
    return;
  }
  isRunning = true;

  var dialogDiv = showVirtualDialog(mapDiv, "Just a moment, please ...");
  setTimeout(function() {
    mapDiv.removeChild(dialogDiv);
  }, 3000);

  // Address -> latitude,longitude
  plugin.google.maps.Geocoder.geocode({
    "address": inputField.value
  }, function(results) {

    if (results.length) {

      // Add a marker
      var marker = map.addMarker({
        'position': results[0].position,
        'title':  JSON.stringify(results[0].position)
      });

      // Move to the position
      map.animateCamera({
        'target': results[0].position,
        'zoom': 17
      }, function() {
        marker.showInfoWindow();
        isRunning = false;
      });


    } else {
      isRunning = false;
    }

  });
});
```


![](image1.gif)

----

## Multiple locations

You can pass multiple location in one request as Array.
In this case, the method passes an instance of [BaseArrayClass](../../BaseArrayClass/README.md),
then you will receive each results one by one.

The instance of [BaseArrayClass](../../BaseArrayClass/README.md) triggers the `finish` event
when all requests are completed.

If any error occurs during the requests processing, the instance triggers `error` event.


```html
<div id="map_canvas2">
  <span class="smallPanel"><button>Click here!</button></span>
</div>
```

```js
var mapDiv = document.getElementById("map_canvas2");
var map = plugin.google.maps.Map.getMap(mapDiv, {
  camera: {
    target: [
      {"lat": 21.306944, "lng": -157.858333},
      {"lat": 47.037874, "lng": -69.779490}
    ]
  }
});

// Show a virtual dialog (loader.js)
showVirtualDialog(mapDiv, "Click on button!");

var inputField = mapDiv.getElementsByTagName("input")[0];
var button = mapDiv.getElementsByTagName("button")[0];
var isRunning = false;
button.addEventListener("click", function() {
  if (isRunning) {
    return;
  }
  isRunning = true;

  var dialogDiv = showVirtualDialog(mapDiv, "Just a moment, please ...");
  setTimeout(function() {
    mapDiv.removeChild(dialogDiv);
  }, 3000);

  var start = Date.now();

  // Geocode multiple location
  plugin.google.maps.Geocoder.geocode({

    // US Capital cities
    "address": [
      "Montgomery, AL, USA", "Juneau, AK, USA", "Phoenix, AZ, USA",
      "Little Rock, AR, USA", "Sacramento, CA, USA", "Denver, CO, USA",
      "Hartford, CT, USA", "Dover, DE, USA", "Washington, DC, USA",
      "Tallahassee, FL, USA", "Atlanta, GA, USA", "Honolulu, HI, USA",
      "Boise, ID, USA", "Springfield, IL, USA", "Indianapolis, IN, USA",
      "Des Moines, IA, USA", "Topeka, KS, USA", "Frankfort, KY, USA",
      "Baton Rouge, LA, USA", "Augusta, ME, USA", "Annapolis, MD, USA",
      "Boston, MA, USA", "Lansing, MI, USA", "Saint Paul, MN, USA",
      "Jackson, MS, USA", "Jefferson City, MO, USA", "Helena, MT, USA",
      "Lincoln, NE, USA", "Carson City, NV, USA", "Concord, NH, USA",
      "Trenton, NJ, USA", "Santa Fe, NM, USA", "Albany, NY, USA",
      "Raleigh, NC, USA", "Bismarck, ND, USA", "Columbus, OH, USA",
      "Oklahoma City, OK, USA", "Salem, OR, USA", "Harrisburg, PA, USA",
      "Providence, RI, USA", "Columbia, SC, USA", "Pierre, SD, USA",
      "Nashville, TN, USA", "Austin, TX, USA", "Salt Lake City, UT, USA",
      "Montpelier, VT, USA", "Richmond, VA, USA", "Olympia, WA, USA",
      "Charleston, WV, USA", "Madison, WI, USA", "Cheyenne, Wyoming, USA"
    ]
  }, function(mvcArray) {

    var latLngBounds = new plugin.google.maps.LatLngBounds();
    var markers = new plugin.google.maps.BaseArrayClass();

    mvcArray.on('error', function(error) {
      console.log(error);
    });
    mvcArray.on('insert_at', function(index) {

      // Get a result
      var geocodeResult = mvcArray.getAt(index);
      if (geocodeResult.length > 0) {

        latLngBounds.extend(geocodeResult[0].position);

        var marker = map.addMarker({
          'position': geocodeResult[0].position,
          'title':  JSON.stringify(geocodeResult)
        });
        markers.push(marker);
      } else {
        markers.push(null);
      }
    });

    mvcArray.on('finish', function() {
      isRunning = false;
    });

    markers.on('insert_at', function() {
      if (!isRunning && markers.getLength() === mvcArray.getLength()) {
        var end = Date.now();
        alert("results : " + mvcArray.getLength() + "\n" +
              "duration: " + ((end - start) / 1000).toFixed(1) + " seconds");
      }
    });

  });
});

```

![](image2.gif)
