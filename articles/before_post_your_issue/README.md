# Please read before asking your question or issue

Hi, thank you for using the cordova-googlemaps-plugin.

If you come here, you may have some issues.
I would like to help you to solve your issues, and improve this plugin as much as possible.
But in order to that, I need also your help as much as possible.

-------

## 1. Search the past issues

Before question, please search the past issues from the search box in the Github page.

![](search_past_issues.png)

You probably find similar questions and answers.

![](search_results.png)

-------

## 2. Question about your code? Please beautify your code.

If you want to describe your code, please show me your code and data.
When you past your code, please use the **triple-backslashes**.

If you specify your code language (js, css, html ...etc), Github colors your code automatically.

![](use_triple_backslashes.png)

And also, please format your code. You can beautify your JS code at http://jsbeautifier.org/

![](format_your_code.png)

-------

## 3. Which version do you use?

The important thing is **what version of this plugin do you use?**

Especially the plugin version 2.0 has been changed high frequency.
Please include your miner version.

```
$ cordova plugin list
com.googlemaps.ios 2.3.0 "Google Maps SDK for iOS"
cordova-plugin-googlemaps 2.0.0-beta2-20170714-1033 "cordova-plugin-googlemaps"
                          ^^^^^^^^^^^^^^^^^^^^^^^^^
                          Please include the plugin miner version
```

-------

## 4. Taking screen capture or screen record

In order to understand your issue, please take a screen capture or screen record(video).

Don't you know how to do that?

### Android

**Screen capture**

```shell
$> adb shell screencap -p /sdcard/capture.png

$> adb pull /sdcard/capture.png ./
```

**Screen record**

```shell
$> adb shell screenrecord /sdcard/capture.mp4

$> adb pull /sdcard/capture.mp4 ./
```

### iOS

- [How to take screen record with QuickTime](https://www.tekrevue.com/tip/record-iphone-screen-quicktime/)

Then upload the video to Youtube, or convert it to git animation.
This is really helpful to understand your situation.

-------

## 5. Save the logs

When your app crashes for some reason, your Android or iOS tells the reason in native logs.
Please saves the logs using `adb` command or `xcode`.

We can understand what happens or where the problem is for most of cases.

-------

## 6. Provide your code

In order to reproduce your issue, we ask to share your project files.

Sharing project files leads to solve your issue early.

Please share your project files on git repository service like [Github](https://github.com) or [BitBucket](https://bitbucket.org).

**Bitbucket allows you to make a private git repository as free**.
You can share your project files with only me.
If you are not familiar with git repository, please watch this video.
https://www.youtube.com/watch?v=BtEvnE79jxY

### Need NDA? We can do it.

If you need to sign up your NDA, please let us know.

**Don't send us zip file. Really!**


-------

## 7. Don't send us email without asking.

Some people send us a question or code through E-mail.

We appreciate if you ask at the issue list at first.

Even if you (or your company) don't want to ask at public issue list, contact to us.
But don't send us your code immediately.

We might ask to pay some amount for private support.

--------

## 8. Feature request

Requesting new feature, you can do that. But we might ask you to donate some amount.
Because we have to work lots of times.

It is depends on the content of your feature request.

Donated amount is used for buying a new device for test, such as iPhone or Android, or buying software, etc.
