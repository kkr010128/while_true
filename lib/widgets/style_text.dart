import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: 'Arita',
        color: color,
      ),
    );
  }
}

class H1Text extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  const H1Text({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        fontFamily: 'Arita',
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}

class H2Text extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  const H2Text({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontFamily: 'Arita',
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}

class H3Text extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign textAlign;

  const H3Text({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        fontFamily: 'Arita',
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
