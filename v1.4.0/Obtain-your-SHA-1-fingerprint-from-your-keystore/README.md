You can get your SHA-1 fingerprint from your keystore.

```
$> keytool -v -list -keystore <keystore path>
```

For example:
```
$> keytool -v -list -keystore ~/.android/debug.keystore
```

## meteor
For a meteor application, you need to use this keystore:
```
$ keytool -list -v -keystore ~/.meteor/android_bundle/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android
```
