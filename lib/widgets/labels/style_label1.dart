import 'package:flutter/material.dart';

class StyleLabel1 extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double height;

  const StyleLabel1({
    super.key,
    required this.text,
    this.backgroundColor = const Color.fromARGB(225, 22, 22, 76), // 기본 배경색
    this.textColor = const Color.fromARGB(255, 164, 164, 255),
    this.height = 25,
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
          Container(
            width: height * 0.3, // 원 크기 조정
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 164, 164, 255),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 5),
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
