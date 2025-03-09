import 'package:achieve_plus/utils/theme.dart';
import 'package:achieve_plus/views/home_view.dart';
import 'package:achieve_plus/views/main_view.dart';
import 'package:achieve_plus/widgets/controllers/tab_controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWebApp());
}

class MyWebApp extends StatelessWidget {
  const MyWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeView(),
      ),
    );
  }
}
