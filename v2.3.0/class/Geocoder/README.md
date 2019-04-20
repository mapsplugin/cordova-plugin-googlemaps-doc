:warning: **This document is aim for older versions (from 2.3.0 to 2.5.3).
Document for new version is https://github.com/mapsplugin/cordova-plugin-googlemaps-doc/blob/master/v2.6.0/README.md**

# Geocoder class

Geocoder class provides only one static method: `geocoder()`.

You can do
- **Geocoding** : Convert from *address* to *latitude / longitude*.
- **Reverse geocoding** : Convert from *latitude / longitude*  to *address*.</li>

You can also give multiple locations to the geocoder method at the same time,
then you can receive the results each time through the [BaseArrayClass](../BaseArrayClass/README.md) instance.


---------------------------------------------------------------

## API Reference

<table class="reference">
    <tr>
        <th><a href="./geocoding/README.md">Geocoding</a></th>
        <td>Get latitude / longitude pair(s) from the giving address(es).</td>
    </tr>
      <tr>
          <th><a href="./reverse_geocoding/README.md">Reverse geocoding</a></th>
          <td>Get the giving addresses from latitude / longitude pair(s)  .</td>
      </tr>
</table>
