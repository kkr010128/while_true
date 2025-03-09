import 'package:flutter/material.dart';

class StyleLabel2 extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double height;

  const StyleLabel2({
    super.key,
    required this.text,
    this.backgroundColor = const Color.fromARGB(225, 96, 97, 255), // 기본 배경색
    this.textColor = Colors.white,
    this.height = 25,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5), // 라벨을 캡슐 모양으로 만들기
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: height * 0.4,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
