import 'package:tryCatch/widgets/labels/style_label2.dart';
import 'package:flutter/material.dart';
import 'banner_text.dart';
import '../buttons/achieve_button.dart';
import 'package:tryCatch/widgets/labels/style_label3.dart';

class BannerWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String buttonText;
  final VoidCallback? onPressed;

  const BannerWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 80,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    StyleLabel3(text: "학습동아리"),
                    SizedBox(width: 4),
                    StyleLabel3(text: "컴퓨터공학과"),
                    SizedBox(width: 4),
                    StyleLabel3(text: "UX/UI 디자이너"),
                    SizedBox(width: 4),
                    StyleLabel3(text: "개발자"),
                  ]),
                  SizedBox(height: 20),
                  StyleLabel2(text: "1기 모집중"),
                ],
              ),
              const SizedBox(height: 10),
              BannerText(text: title),
              const SizedBox(height: 10),
              AchieveButton(text: buttonText, onPressed: onPressed),
            ],
          ),
        ),
      ],
    );
  }
}
