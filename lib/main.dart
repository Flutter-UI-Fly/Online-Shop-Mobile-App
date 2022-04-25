import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_shop_mobile_app/pages/app.dart';
import 'package:online_shop_mobile_app/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Online Shop Mobile App',
      theme: ThemeData(
        primarySwatch: appColor,
        scaffoldBackgroundColor: greyColor.shade100,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: greyColor.shade100,
        ),
      ),
      home: const AppPage(),
    );
  }
}
