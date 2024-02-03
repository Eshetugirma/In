import 'package:flutter/material.dart';
import 'package:instagram_flutter_clone/responsive_screen_layout/mobile_screen_layout.dart';
import 'package:instagram_flutter_clone/responsive_screen_layout/responsive_screen_layout.dart';
import 'package:instagram_flutter_clone/responsive_screen_layout/web_screen_layout.dart';
import 'package:instagram_flutter_clone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const Center(
        child: ResponsiveLayout(
            mobileScreenLayout: MobileScreenLayout(),
            webScreenLayout: WebScreenLayout()),
      ),
    );
  }
}
