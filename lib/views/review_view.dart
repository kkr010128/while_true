import 'package:flutter/material.dart';
import '../widgets/style_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          H2Text(text: "개발자로 한 걸음,\n직접 경험한 생생한 후기\n"),
          H3Text(text: "학습동아리 전환 전 활동을 기준으로 작성되었습니다\n\n"),
          SvgPicture.asset("assets/review/chat_bubble1.svg", width: 320),
          SizedBox(height: 6),
          SvgPicture.asset("assets/review/chat_bubble2.svg", width: 320),
          SizedBox(height: 6),
          SvgPicture.asset("assets/review/chat_bubble3.svg", width: 320),
          SizedBox(height: 6),
          SvgPicture.asset("assets/review/chat_bubble3-1.svg", width: 320),
          SizedBox(height: 6),
          SvgPicture.asset("assets/review/chat_bubble4.svg", width: 320),
          SizedBox(height: 6),
          SvgPicture.asset("assets/review/chat_bubble5.svg", width: 320),
          SizedBox(height: 6),
          SvgPicture.asset("assets/review/chat_bubble9.svg", width: 320),
          SizedBox(height: 6),
          SvgPicture.asset("assets/review/chat_bubble6.svg", width: 320),
          SizedBox(height: 6),
          SvgPicture.asset("assets/review/chat_bubble7.svg", width: 320),
          SizedBox(height: 6),
          SvgPicture.asset("assets/review/chat_bubble8.svg", width: 320),
          H1Text(text: "⋮"),
        ],
      ),
    );
  }
}
