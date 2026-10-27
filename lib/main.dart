import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'package:food_delivery/pages/bottom_navbar.dart';

void main() {
  //this is for lock the screen orientation
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitDown,
  //   DeviceOrientation.portraitUp,
  // ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'foodek - Food Delivery',

      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.deepOrange,
        textTheme: TextTheme(),
        fontFamily: 'OpenSans',
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepOrange,

          centerTitle: true,
          elevation: 3,
        ),
      ),
      home: BottomNavBarPage(),
    );
  }
}
