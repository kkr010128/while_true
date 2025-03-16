import 'package:flutter/material.dart';
import 'package:tryCatch/widgets/work_gallery.dart';
import '../widgets/style_text.dart';
import '../widgets/question_answer.dart';
import 'home_view.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          H3Text(text: "개발을 위한 확실한 역량을 갖추기 위해 모였습니다\n"),
          H1Text(text: "서비스 기획 • 개발 • 서비스 운영\n그리고 유지보수까지\n"),
          H1Text(text: "⋮"),
          H3Text(text: "\n단순히 개발 경험을 쌓으려고 모이지 않았습니다."),
          H3Text(text: "전공 커리큘럼에서 소홀히 넘겨졌던 부분부터 협업을 위한 환경,"),
          H3Text(text: "실제 서비스를 개발하기 위한 기반을 멘토와 함께 다지고"),
          H3Text(text: "문서를 기반과 단위로 하는 개발을 진행합니다."),
          H3Text(text: "\n저희는 실제 서비스가 가능한 현실적인 프로젝트를 진행하며"),
          H3Text(text: "관련된 개발 역량을 쌓고, 개발자로 성장해 나갈 수 있는"),
          H3Text(text: "협업의 장을 만들어 운영하려 합니다."),
          Image.asset("assets/Screen.png"),
          SizedBox(height: 100),
          CustomText(
              text: "tryCatch의 프로젝트\n",
              fontSize: 20,
              fontWeight: FontWeight.w700),
          WorkGallery(imagePaths: [
            "assets/intro/tr_work_slide_1.png",
            "assets/intro/tr_work_slide_2.png",
            "assets/intro/tr_work_slide_3.png",
            "assets/intro/tr_work_slide_4.png",
          ]),
          SizedBox(height: 100),
          CustomText(
              text: "어떻게 운영 되나요?\n", fontSize: 20, fontWeight: FontWeight.w700),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/intro/intro_process_1.png", width: 120),
              Image.asset("assets/intro/intro_process_2.png", width: 120),
              Image.asset("assets/intro/intro_process_3.png", width: 120),
            ],
          ),
          // SizedBox(height: 100),
          TextButton(
            onPressed: () {
              // HomeView의 상태를 찾아 ProcessView로 전환
              final homeViewState =
                  context.findAncestorStateOfType<HomeViewState>();
              if (homeViewState != null) {
                homeViewState.onTabChanged(1);
              }
            },
            child: Text(
              "자세히 보기",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(height: 100),
          CustomText(
              text: "자주 묻는 질문\n", fontSize: 20, fontWeight: FontWeight.w700),
          FAQWidget(
            faqs: [
              {
                "question": "Q: 컴퓨터공학과만 지원할 수 있나요?",
                "answer":
                    "A: tryCatch()는 컴퓨터공학과 학습동아리로, 보다 전문적인 환경을 구성하기 위해 디자인미술학과와 컴퓨터공학과 학생만 지원 가능합니다."
              },
              {
                "question": "Q: 다른 동아리와 같이 해도 되나요?",
                "answer":
                    "A: 다른 개발 동아리와의 중복 활동은 제한하며, 협업을 통한 프로젝트를 진행하는 만큼 원활한 협업을 위해 외부 동아리 활동을 병행하는 경우 활동이 힘들 수 있습니다."
              },
              {
                "question": "Q: 개발을 할 줄 몰라도 괜찮을까요?",
                "answer":
                    "A: 본인의 학습 의지와 꾸준함을 바탕으로 개발 활동을 진행하는 동아리인 만큼 동아리 내 멘토링을 통해 충분히 개발 프로젝트를 할 수 있을 정도로 성장할 수 있습니다."
              },
              {
                "question": "Q: 더 궁금한 것이 있어요",
                "answer": "A: 추가적인 문의 사항은 아래를 통해 해주세요.\ninstagram: @unibag.app"
              },
            ],
          ),
          SizedBox(height: 100),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
