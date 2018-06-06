[TroubleShootings](../README.md) > Could not get unknown property 'ANDROID_SUPPORT_V4_VERSION' and 'PLAY_SERVICES_VERSION'

# Could not get unknown property 'ANDROID_SUPPORT_V4_VERSION' and 'PLAY_SERVICES_VERSION'

You might see similar build error logs like below.

``` bash
$ cordova run android
...
2018-03-13T11:55:30.1667550Z
2018-03-13T11:55:30.1679170Z * What went wrong:
2018-03-13T11:55:30.1695600Z A problem occurred evaluating root project 'android'.
2018-03-13T11:55:30.1711390Z > Could not get unknown property 'ANDROID_SUPPORT_V4_VERSION' for object of type org.gradle.api.internal.artifacts.dsl.dependencies.DefaultDependencyHandler.
2018-03-13T11:55:30.1720830Z
```

------------------------------------------------------------------------

## Reason

Your cordova version is too old.

------------------------------------------------------------------------

## Solution1: Upgrade cordova itself

Easiest solution is to upgrade `cordova` command itself.

```
$> npm -g install cordova

$> cordova -v
8.0.0

$> cordova platform rm android

$> cordova platform add android

$> cordova build android
```

------------------------------------------------------------------------


## Solution 2: modify the build configure files

Some developers do not want to upgrade cordova itself for their reasons.
In that case, you need to modify the build configure files.


**Step 1. Open the `platforms/android/project.properties` file.**

You will see like this:

(before)
```
target=android-26
android.library.reference.1=CordovaLib
android.library.reference.2=app
cordova.gradle.include.1=cordova-plugin-googlemaps/starter-tbxml-android.gradle
cordova.system.library.1=com.google.android.gms:play-services-maps:$PLAY_SERVICES_VERSION
cordova.system.library.2=com.google.android.gms:play-services-location:$PLAY_SERVICES_VERSION
cordova.system.library.3=com.android.support:support-core-utils:$ANDROID_SUPPORT_V4_VERSION
```

Then you need to specify all the same version like below.

```
target=android-26
android.library.reference.1=CordovaLib
android.library.reference.2=app
cordova.gradle.include.1=cordova-plugin-googlemaps/starter-tbxml-android.gradle
cordova.system.library.1=com.google.android.gms:play-services-maps:15.0.1
cordova.system.library.2=com.google.android.gms:play-services-location:15.0.1
cordova.system.library.3=com.android.support:support-core-utils:27.1.1
```

**Step 2. Open the `platforms/android/app/build.gradle` file.**


(before)
```
dependencies {
  implementation fileTree(dir: 'libs', include: '*.jar')
  // SUB-PROJECT DEPENDENCIES START
  implementation(project(path: ":CordovaLib"))
  compile "com.google.android.gms:play-services-maps:$PLAY_SERVICES_VERSION"
  compile "com.google.android.gms:play-services-location:$PLAY_SERVICES_VERSION"
  compile "com.android.support:support-core-utils:$ANDROID_SUPPORT_V4_VERSION"
  // SUB-PROJECT DEPENDENCIES END
}
```

Then you need to specify all the same version like below.

```
dependencies {
  implementation fileTree(dir: 'libs', include: '*.jar')
  // SUB-PROJECT DEPENDENCIES START
  implementation(project(path: ":CordovaLib"))
  compile "com.google.android.gms:play-services-maps:15.0.1"
  compile "com.google.android.gms:play-services-location:15.0.1"
  compile "com.android.support:support-core-utils:27.1.1"
  // SUB-PROJECT DEPENDENCIES END
}
```


**Step 3. remove caches**

```
$> cordova clean
```


**Step 4. build again**

```
$> cordova build android
```


------------------------------------------------------------------------

## Solution3: Cloud Build (such as PhoneGap Build)

You need to specify `phonegap-version` in your config.xml

```
<widget ...>
  <plugin name="cordova-plugin-googlemaps" spec="2.3.6">
    <variable name="API_KEY_FOR_ANDROID" value="(api key)" />
    <variable name="API_KEY_FOR_IOS" value="(api key)" />
    <variable name="PLAY_SERVICES_VERSION" value="15.0.1" />
    <variable name="ANDROID_SUPPORT_V4_VERSION" value="27.1.1" />
  </plugin>

  <!--
    You need to specify cli-7.1.0 or greater version.
    https://build.phonegap.com/current-support
  -->
  <preference name="phonegap-version" value="cli-8.0.0" />
</widget>
```
