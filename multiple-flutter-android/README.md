![enter image description here](https://media4.giphy.com/media/FOTHu5Y669jCxeGWN7/giphy.gif?cid=790b7611ed479c5f95ce04a69999347efd7772476bf25ef6&rid=giphy.gif&ct=g)

The example in question shows an integration between native android screens with screens written in Flutter.

Values ​​are shared between screens, showing that it is perfectly valid to share state between native and Flutter applications.

To run this sample:

```
cd multiple_flutters_android
PATH_TO_adb/adb shell am start -n dev.flutter.multipleflutters/dev.flutter.multipleflutters.MainActivity
```