[TroubleShootings](../README.md) > mips64el-linux-android-strip

# Can not build for some reason with `mips64el-linux-android-strip` error.

You might see similar build error logs like below.

``` bash
$ cordova run android
...
:app:compileDebugNdk NO-SOURCE
:app:compileDebugSources
:app:mergeDebugAssets
:app:transformClassesWithStackFramesFixerForDebug
:app:transformClassesWithDesugarForDebug
:app:transformClassesWithDexBuilderForDebug
:app:transformDexArchiveWithExternalLibsDexMergerForDebug
:app:transformDexArchiveWithDexMergerForDebug
:app:transformNativeLibsWithMergeJniLibsForDebug
:app:transformNativeLibsWithStripDebugSymbolForDebug FAILED

FAILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':app:transformNativeLibsWithStripDebugSymbolForDebug'.
> A problem occurred starting process 'command '/android-sdk/ndk-bundle/toolchains/mips64el-linux-android-4.9/prebuilt/darwin-x86_64/bin/mips64el-linux-android-strip''

* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output. Run with --scan to get full insights.

* Get more help at https://help.gradle.org

BUILD FAILED in 2m 24s
46 actionable tasks: 46 executed
(node:2334) UnhandledPromiseRejectionWarning: Error: /.../gradlew: Command failed with exit code 1 Error output:
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
/.../.gradle/caches/transforms-1/files-1.1/play-services-base-15.0.1.aar/3059966d46a542402c4f8a41d6c7d326/jars/classes.jar(com/google/android/gms/common/api/GoogleApiClient.class): warning: Cannot find annotation method 'value()' in type 'GuardedBy': class file for javax.annotation.concurrent.GuardedBy not found
/.../.gradle/caches/transforms-1/files-1.1/play-services-maps-15.0.1.aar/689224f82eb48a86e5a66eb65c5ddc71/jars/classes.jar(com/google/android/gms/maps/MapsInitializer.class): warning: Cannot find annotation method 'value()' in type 'GuardedBy'
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: Some input files use unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
2 warnings

FAILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':app:transformNativeLibsWithStripDebugSymbolForDebug'.
> A problem occurred starting process 'command '/android-sdk/ndk-bundle/toolchains/mips64el-linux-android-4.9/prebuilt/darwin-x86_64/bin/mips64el-linux-android-strip''

* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output. Run with --scan to get full insights.

* Get more help at https://help.gradle.org

BUILD FAILED in 2m 24s
    at ChildProcess.whenDone (/.../(your project dir)/platforms/android/cordova/node_modules/cordova-common/src/superspawn.js:169:23)
    at ChildProcess.emit (events.js:159:13)
    at maybeClose (internal/child_process.js:943:16)
    at Socket.stream.socket.on (internal/child_process.js:363:11)
    at Socket.emit (events.js:159:13)
    at Pipe._handle.close [as _onclose] (net.js:568:12)
(node:2334) UnhandledPromiseRejectionWarning: Unhandled promise rejection. This error originated either by throwing inside of an async function without a catch block, or by rejecting a promise which was not handled with .catch(). (rejection id: 1)
(node:2334) [DEP0018] DeprecationWarning: Unhandled promise rejections are deprecated. In the future, promise rejections that are not handled will terminate the Node.js process with a non-zero exit code.

```

## Reason

Cordova project requests `Gradle 4.1` with `com.android.tools.build:gradle:3.0.0`.

Since Google no longer supports MIPS platform since Android NDK r17.
https://developer.android.com/ndk/downloads/revision_history

But Cordova project generates with `com.android.tools.build:gradle:3.0.0` by default, which has been released before Android NDK r17.

## Solution: use `Gradle 4.4` and `com.android.tools.build:gradle:3.1.2`

Install Gradle 4.4 (or higher version), then modify the below files.

- **platforms/android/build.gradle**
  ```
  buildscript {
    repositories {
      jcenter()
      maven {
        url "https://maven.google.com"
      }
    }
    dependencies {

      // NOTE: Do not place your application dependencies here; they belong
      // in the individual module build.gradle files
      classpath 'com.android.tools.build:gradle:3.1.2'  <-- from 3.0.0 to 3.1.2
    }
  }
  ```

- **platforms/android/app/build.gradle**
  ```
  buildscript {
    repositories {
      mavenCentral()
      jcenter()
      maven {
        url "https://maven.google.com"
      }
    }

    dependencies {
      classpath 'com.android.tools.build:gradle:3.1.2'  <-- from 3.0.0 to 3.1.2
    }
  }
  ...

  task wrapper(type: Wrapper) {
      gradleVersion = '4.4.0'  <-- from 4.1.0 to 4.4.0
  }
  ```

- **platforms/android/CordovaLib/build.gradle**
  ```
  buildscript {
    repositories {
      jcenter()
      maven {
        url "https://maven.google.com"
      }
    }

    dependencies {
      classpath 'com.android.tools.build:gradle:3.1.2'  <-- from 3.0.0 to 3.1.2
      classpath 'com.github.dcendents:android-maven-gradle-plugin:1.5'
      classpath 'com.jfrog.bintray.gradle:gradle-bintray-plugin:1.7.3'
    }
  }
  ```

Then try again.

```
$> cordova run android
...
:app:processDebugJavaRes NO-SOURCE
:app:transformResourcesWithMergeJavaResForDebug
:app:packageDebug
:app:assembleDebug
:app:cdvBuildDebug

BUILD SUCCESSFUL in 1m 12s

```
