import 'package:flutter/material.dart';

class AchieveButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed; // 널 허용으로 변경

  const AchieveButton({
    super.key,
    required this.text,
    this.onPressed, // 널 허용
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {}, // null일 경우 빈 함수 실행
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 91, 0, 249),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
