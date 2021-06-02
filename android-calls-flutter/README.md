![enter image description here](https://i.giphy.com/media/fRqdrxG0EhzzY9UNeT/giphy.webp)

This example shows a very common use of an application written in native android that calls another application in Flutter.

In the example in question a login screen is displayed in native, and when logging in, the user is redirected to a home page written in Flutter.

To run this sample:

```
PATH_TO_adb/adb shell am start -n com.example.test/com.example.test.MainActivity
```