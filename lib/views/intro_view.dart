import 'package:flutter/material.dart';
import '../widgets/intro/style_text.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          H3Text(text: "개발을 위한 확실한 역량을 갖추기 위해 모였습니다\n"),
          H1Text(text: "서비스 기획 • 개발 • 서비스 운영\n그리고 유지보수까지"),
          H1Text(text: "⋮"),
          H3Text(text: "\n단순히 개발 경험을 쌓으려고 모이지 않았습니다."),
          H3Text(text: "전공 커리큘럼에서 소홀히 넘겨졌던 부분부터 협업을 위한 환경,"),
          H3Text(text: "실제 서비스를 개발하기 위한 기반을 멘토와 함께 다지고"),
          H3Text(text: "문서를 기반과 단위로 하는 개발을 진행합니다."),
          H3Text(text: "\n저희는 실제 서비스가 가능한 현실적인 프로젝트를 진행하며"),
          H3Text(text: "관련된 개발 역량을 쌓고, 개발자로 성장해 나갈 수 있는"),
          H3Text(text: "협업의 장을 만들어 운영하려 합니다."),
        ],
      ),
    );
  }
}
