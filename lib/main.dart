import 'package:tryCatch/utils/theme.dart';
import 'package:tryCatch/views/home_view.dart';
import 'package:tryCatch/views/warnning_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();
  runApp(const MyWebApp());
}

class MyWebApp extends StatelessWidget {
  const MyWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: isMobile ? HomeView() : WarningView(),
    );
  }
}
