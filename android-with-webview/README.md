![enter image description here](https://i.imgur.com/I1KHyJt.png)

This example shows another very common use of Flutter along with native android. In this example a Flutter Web application is added inside a WebView of the native application.

You can see that the appbar is still a native component, but the body of the screen is a webview serving a Flutter Web application.

To run this sample:

```
PATH_TO_adb/adb shell am start -n com.example.myapplication/com.example.myapplication.MainActivity
```