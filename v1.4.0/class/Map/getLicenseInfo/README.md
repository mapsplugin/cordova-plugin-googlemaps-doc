Return the license text of the Google Maps SDK.

### Description
Returns the open source software license information for Google Maps Android API v2 and Google Maps SDK for iOS.

If you use this plugin in your application, you **MUST** include the license attribution text as part of a **"Legal Notices"** section in your application. Including legal notices as an independent menu item, or as part of an "About" menu item, is recommended.
This is requirement by [Google Maps Android API v2](https://developers.google.com/maps/documentation/android/intro#attribution_requirements) and [Google Maps SDK for iOS](https://developers.google.com/maps/documentation/ios/intro#attribution_requirements)

-----

### code
```html
<style type="text/css">
  #licenseView {
    display: none;
    height: 300px;
    overflow: scroll;
    background-color: #F0F0F0;
    border: 1px solid gray;
  }
</style>

<b>Google Map</b>
<button id="licenseBtn">Legal Notices</button>
<div id="licenseView" ></div>

<script type="text/javascript">
function onDeviceReady(map) {
  var button = document.getElementById("licenseBtn");
  button.addEventListener("click", function() {
  
    map.getLicenseInfo(function(txt, txt1) {
      // Until v1.1.5, the plugin passes the text to txt1.
      // As of v1.2.0, the plugin passes the text to txt.
      var div = document.getElementById("licenseView");
      div.innerText = txt || txt1;
      div.style.display = "block";
    });
  
  });
}
</script>
```
![](getLicenseInfo.png)
