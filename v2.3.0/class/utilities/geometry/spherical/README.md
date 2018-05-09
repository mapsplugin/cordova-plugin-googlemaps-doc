# spherical utility

------------
## API Reference

## Methods
<table>
    <tr>
        <th><a href="./computeDistanceBetween/README.md">computeDistanceBetween</a></th>
        <td>Returns the distance, in meters, between two LatLngs.</td>
    </tr>
    <tr>
        <th><a href="./computeOffset/README.md">computeOffset</a></th>
        <td>Returns the LatLng resulting from moving a distance from an origin in the specified heading (expressed in degrees clockwise from north).</td>
    </tr>
    <tr>
        <th><a href="./computeOffsetOrigin/README.md">computeOffsetOrigin</a></th>
        <td>Returns the location of origin when provided with a LatLng destination, meters travelled and original heading. Headings are expressed in degrees clockwise from North. This function returns null when no solution is available.</td>
    </tr>
    <tr>
        <th><a href="./computeLength/README.md">computeLength</a></th>
        <td>Returns the length of the given path.</td>
    </tr>
    <tr>
        <th><a href="./computeArea/README.md">computeArea</a></th>
        <td>Returns the area of a closed path.</td>
    </tr>
    <tr>
        <th><a href="./computeSignedArea/README.md">computeSignedArea</a></th>
        <td>Returns the signed area of a closed path. The signed area may be used to determine the orientation of the path.</td>
    </tr>
    <tr>
        <th><a href="./computeHeading/README.md">computeHeading</a></th>
        <td>Returns the heading from one LatLng to another LatLng. Headings are expressed in degrees clockwise from North within the range (-180,180).</td>
    </tr>
    <tr>
        <th><a href="./interpolate/README.md">interpolate</a></th>
        <td>Returns the LatLng which lies the given fraction of the way between the origin LatLng and the destination LatLng.</td>
    </tr>
</table>
