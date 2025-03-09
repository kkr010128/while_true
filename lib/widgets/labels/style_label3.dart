import 'package:flutter/material.dart';

class StyleLabel3 extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double height;

  const StyleLabel3({
    super.key,
    required this.text,
    this.backgroundColor = const Color.fromARGB(225, 22, 22, 76), // 기본 배경색
    this.textColor = const Color.fromARGB(255, 164, 164, 255),
    this.height = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(height / 2), // 라벨을 캡슐 모양으로 만들기
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "#",
            style: TextStyle(
              fontSize: height * 0.6,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          const SizedBox(width: 3),
          Text(
            text,
            style: TextStyle(
              fontSize: height * 0.6,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
