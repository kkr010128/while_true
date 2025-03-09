import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: const Color.fromARGB(225, 22, 22, 76), // 기본 배경색
  scaffoldBackgroundColor: const Color.fromARGB(225, 27, 27, 27), // 앱 배경색

  tabBarTheme: TabBarTheme(
    labelColor: const Color.fromARGB(255, 164, 164, 255), // 선택된 탭 색상
    unselectedLabelColor: Colors.white70, // 선택되지 않은 탭 색상
    indicator: const BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Colors.white, width: 2.0),
      ),
    ),
    indicatorSize: TabBarIndicatorSize.label,
  ),
);
