import 'package:flutter/material.dart';

class WarningView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.warning,
                size: 80, color: const Color.fromARGB(255, 0, 0, 0)),
            const SizedBox(height: 20),
            const Text(
              "이 페이지는 모바일에서만 이용할 수 있습니다.",
              style: TextStyle(fontSize: 18, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
