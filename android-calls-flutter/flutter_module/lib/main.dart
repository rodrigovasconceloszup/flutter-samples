import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'page/products_page.dart';

const platform = const MethodChannel('com.example.test/param');

var param;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  platform.setMethodCallHandler((call) async {
    if (call.method == 'paramToFlutter') {
      param = call.arguments;
      runApp(MyApp());
    }
    return;
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[300],
      ),
      home: ProductsPage(),
    );
  }
}
