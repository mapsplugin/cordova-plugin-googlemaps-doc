# Before bug reporting

Thank you for using cordova-googlemaps-plugin.

If you get in a trouble, I'm sorry for that.
Many people reports many issues, however there are many reasons.
Sometimes it is really critical bug, or might be your bug.

However, the main developer is just one person, thus the human resource is very limited, and my private time is almost gone.
It means my motivation has been decreasing, and might be stop the development.

In order to reduce the invest time to your issue, please do following things before reporting your issue.

# 1. Please search in the past issues

There are many issues that includes resolved and unresolved.
Please search your issue in the past issues at first.
https://github.com/mapsplugin/cordova-plugin-googlemaps/issues?utf8=%E2%9C%93&q=

# 2. Please try to create very simple example, then test it

The most amount time of investing is that detecting what is the wrong.
Many people use JavaScript frameworks, such as OnsenUI, jQuery mobile, ionic framework.
Sometimes these JS frameworks causes the trouble with cordova-googlemaps-plugin.

In order to detect that, please create a very simple example project, then **try to reproduce your issue**.

# 3. Did you check the error log?

The bug occur many reason. Sometimes the bug in your code.
Please install the [console plugin](https://github.com/apache/cordova-plugin-console), turning of the debug mode with `map.setDebuggable(true)`, then check the logcat output for Android, and Xcode output for iOS.

- [map.setDebuggable](https://github.com/mapsplugin/cordova-plugin-googlemaps/wiki/Map#mapsetdebuggable)

- [Android logcat viewer](https://play.google.com/store/apps/details?id=org.jtb.alogcat) if you are not familiar with Eclipse.

- [Xcode log](http://www.daveoncode.com/2010/01/12/debugging-phonegap-applications-using-xcode-console/)

# 4. Try to track the code

Because of Open Source Software, you can see all code in this repository.
You are at least Javascript developer, you can understand how the plugin works in JavaScript side.

The JS side source code is here. Please check it.
https://github.com/mapsplugin/cordova-plugin-googlemaps/blob/master/www/googlemaps-cdv-plugin.js

If you are Android and/or iOS developer, try to fix the problem.
Then send me your patch code please.

# 5. Still in trouble? Take a screen record.

Even if you are create a simple project, but still the issue occurs?
Please reports to the issue list with **some screen captures or screen record**.

- [6 Ways To Take Screenshots On Android](http://www.makeuseof.com/tag/6-ways-to-take-screenshots-on-android/)

- [How to take a screenshot with the iPhone](http://www.imore.com/how-to-take-a-screenshot-with-the-iphone)

Recording a video is very very valuable.

If you are using Android 4.4 or over,

- [How to record your screen in Android 4.4 KitKat](http://www.androidcentral.com/android-screen-record-kitkat)

# 6. Report with your conditions.

Many people does not clear your condition at the first time.
But I don't know about your conditions.

Please include the following information:
- The error occurs on Android or iOS, or both?
- What JavaScript framework do you use?
- How to reproduce your issue?
- Give me an example code or example project.
- Please take some screen captures or screen record if available.

# 7. Don't send me your issue directly.

Sometimes someone send me your issue to me directly.
Please ask at the issue list at once, then if I request, send it to me.

Thank you for your cooperation.
