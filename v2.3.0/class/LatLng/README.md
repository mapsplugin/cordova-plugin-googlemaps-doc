# LatLng class

A LatLng is a point in geographical coordinates: latitude and longitude.
Latitude ranges between -90 and 90 degrees, inclusive. Values above or below this range will be clamped to the nearest value within this range.

```js
var latLng = new plugin.google.maps.LatLng(40.712216,-74.22655);
```

## ILatLng

The prefix word `I` indicates `interface`.

```
ILatLng = {

  lat: number,

  lng: number
}
```

The most of methods necessary only  `lat` value and `lng` value.
Because of this, you can give latitude/longitude pairs with ILatLng.
For example, the below code works with this plugin.

```js
map.animateCamera({
  target: {
    lat: 35.13,
    lng: 137.33
  },
  zoom: 15
});
```

---------------------------------------------------------------

## API Reference

### Create

```js
var latLngBounds  = new plugin.google.maps.LatLng(latitude, longitude);
```

### Methods

Method                        | Return value | Description
------------------------------|--------------|----------------
equals(other:LatLng)          | boolean      | Return true if other position is as the same as this LatLng.
toString()                    | string       | Converts to string representation.
toUrlValue(precision?:number) | string       | Returns a string of the form "lat,lng" for this LatLng. We round the lat/lng values to 6 decimal places by default.

### Properties

Property      | Return value | Description
--------------|--------------|-------------------------------------------
lat           | number       | (Readonly)Returns the latitude in degrees.
lng           | number       | (Readonly)Returns the longitude in degrees.
