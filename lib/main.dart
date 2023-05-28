import 'package:flutter/material.dart';
import 'package:travel_app_1/presentation/screens/data_screen.dart';
import 'package:travel_app_1/presentation/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: 'home',
      routes: {
        'home'  : (context) => const HomeScreen(),
        'data'  : (context) => const DataScreen(),
      },
    );
  }
}