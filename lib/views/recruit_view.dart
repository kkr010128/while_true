import 'package:flutter/material.dart';
import 'package:tryCatch/widgets/gallery.dart';
import '../widgets/style_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecruitView extends StatelessWidget {
  const RecruitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          H2Text(text: "이런 분을 찾고 있습니다\n"),
          H3Text(text: "모집 분야\n\n"),
          SvgPicture.asset("assets/review/chat_bubble1.svg", width: 320),
          H1Text(text: "⋮"),
        ],
      ),
    );
  }
}
