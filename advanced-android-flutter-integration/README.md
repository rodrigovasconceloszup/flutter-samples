
![enter image description here](https://i.giphy.com/media/4WEQLZsG4LJy2gIwyA/giphy.webp)

This example shows a real integration between a native Android app with a Flutter app.

The book list is simply loaded with native code, but the editing part of a book is entirely Flutter code.

When editing a book, it is clear that the native side is also updated, thus enabling real-time communication between native and Flutter.

To run this sample:

```
cd android_books
PATH_TO_ADB/adb shell am start -n dev.flutter.example.books/dev.flutter.example.books.MainActivity
```