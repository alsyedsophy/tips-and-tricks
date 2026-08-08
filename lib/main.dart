import 'package:flutter/material.dart';
import 'package:tipsandtrics/home_Page.dart';
import 'package:tipsandtrics/tips/tips_and_tricks/hide_appbar_while_scroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const HomePage(widget: HideAppbarWhileScroll()),
    );
  }
}
