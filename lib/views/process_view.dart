import 'package:tryCatch/widgets/gallery.dart';
import 'package:flutter/material.dart';
import '../widgets/style_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProcessView extends StatelessWidget {
  const ProcessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          H2Text(text: "tryCatch()는 단순한 코딩 동아리가 아닙니다"),
          SizedBox(height: 6),
          H3Text(text: "\n기초가 부족해도 운영 프로세스만 따라 간다면"),
          H3Text(text: "멘토링을 기반으로 한 자기주도 학습과 협업 경험을 통해"),
          H3Text(text: "개발자로서의 사고 방식과 문제 해결력을 키우는 밑거름이 됩니다\n"),
          Image.asset("assets/process_1.png", width: 280),
          SizedBox(height: 10),
          H2Text(text: "\n함께 배우고, \n함께 성장하는 개발자 커뮤니티"),
          H3Text(text: "\n이것이 우리가 지향하는 동아리입니다\n\n"),
          H1Text(text: "⋮"),
          SizedBox(height: 100),
          H1Text(text: "학습 프로세스"),
          Image.asset("assets/dev0.png", width: 250),
          SizedBox(height: 100),
          H3Text(text: "1. 자기주도 스프린트"),
          SizedBox(height: 20),
          H2Text(text: "멘토와 함께 개발 및 협업 관련 지식 학습\n"),
          SvgPicture.asset("assets/studywithmento.svg", width: 200),
          H3Text(
              text:
                  "\n\n4주 이내의 기간동안 팀원들의 협업을 위한 기초 지식을 공부하고,\n개인 블로그에 정리하여 학습 내용을 기록하며\n프로젝트를 진행하기 위한 전반적인 지식을 함양합니다."),
          SizedBox(height: 80),
          H3Text(text: "2. 개발환경 세팅"),
          SizedBox(height: 20),
          H2Text(text: "협업 개발환경 세팅 및 활용 숙지\n"),
          SvgPicture.asset("assets/envset.svg", width: 200),
          H3Text(
              text:
                  "\n\n팀 내의 개발 환경을 세팅하며 사용법을 숙지하고, 다뤄보며 \n유연하고 몰입 가능한 협업을 위해 준비합니다."),
          SizedBox(height: 80),
          H3Text(text: "3. 프로젝트 팀 선발"),
          SizedBox(height: 20),
          H2Text(text: "학습 점검을 통한 팀 빌딩\n"),
          SvgPicture.asset("assets/teambuild.svg", width: 200),
          H3Text(
              text:
                  "\n\n학습 스프린트 기간 동안의 각 구성원의 기술적 이해도를 점검합니다.\n실제 프로젝트 환경에서 원활한 협업이 가능하도록\n내부 선정 기준에 따라 프로젝트를 진행할 팀원을 선발합니다."),
          SizedBox(height: 100),
          H1Text(text: "개발 프로세스"),
          Image.asset("assets/dev1.png", width: 250),
          SizedBox(height: 80),
          H3Text(text: "1. 협업 관련 내용 숙지"),
          SizedBox(height: 20),
          H2Text(text: "문서 기반의 프로젝트 시작\n"),
          InfiniteGallery(imagePaths: [
            "assets/dev_slide_1_1.png",
            "assets/dev_slide_1_2.png",
            "assets/dev_slide_1_3.png",
            "assets/dev_slide_1_4.png",
            "assets/dev_slide_2_5.png",
          ]),
          H3Text(
              text:
                  "개발을 진행하기 전, 팀원 간 원활한 협업을 위해\nGit 및 버전관리, 코드 리뷰, 문서화 등의\n기본적인 협업 도구와 절차를 익힙니다."),
          SizedBox(height: 80),
          H3Text(text: "2. 서비스 기획"),
          SizedBox(height: 20),
          H2Text(text: "아이디어 회의, 기획서 작성 및 계획 수립\n"),
          InfiniteGallery(imagePaths: [
            "assets/dev_slide_2_1.png",
            "assets/dev_slide_2_2.png",
            "assets/dev_slide_2_3.png",
            "assets/dev_slide_2_5.png",
          ]),
          H3Text(
              text:
                  "서비스의 핵심 목표와 기능을 정리하고,\n스토리보드와 와이어프레임을 작성하며\n구체적인 개발 로드맵을 수립합니다."),
          SizedBox(height: 80),
          H3Text(text: "3. 서비스 개발"),
          SizedBox(height: 20),
          H2Text(text: "UX/UI 구현 및 서비스 로직 개발\n"),
          InfiniteGallery(imagePaths: [
            "assets/dev_slide_3_1.png",
            "assets/dev_slide_3_2.png",
          ]),
          H3Text(text: "디자인 시안을 기반으로 UX/UI를 구현하고\n데이터베이스 및 서버 로직을 개발합니다."),
          SizedBox(height: 80),
          H3Text(text: "4. 테스트 및 디버깅"),
          SizedBox(height: 20),
          H2Text(text: "버그 수정 및 품질 향상\n"),
          InfiniteGallery(imagePaths: [
            "assets/dev_slide_4_1.png",
            "assets/dev_slide_4_2.png",
          ]),
          H3Text(
              text:
                  "단위 테스트, 통합 테스트를 진행하며\n버그를 수정하고 서비스의 안정성을 높이며\n최종 배포를 준비합니다."),
          SizedBox(height: 80),
          H3Text(text: "5. 서비스 및 유지보수"),
          SizedBox(height: 20),
          H2Text(text: "실제 사용자 피드백 반영 및 개선\n"),
          Image.asset("assets/dev2.png", width: 300),
          H3Text(
              text:
                  "\n\n서비스 출시 후, 사용자 데이터를 분석하고\n피드백을 반영하여 지속적인 업데이트 및\n성능 개선을 진행합니다."),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

// 1. 자기주도 스프린트

// ### 멘토와 함깨 개발 및 협업 관련 지식 학습

// 4주 이내의 기간동안 팀원들의 협업을 위한 개발 기초 지식을 공부하고, 개인 블로그에 정리하여 학습 내용을 기록하며 프로젝트를 진행하기 위한 전반적인 지식을 함양합니다.

// 1. 개발환경 세팅

// ### 협업 개발환경 세팅 및 활용 숙지

// 팀 내의 개발 환경을 세팅하며 사용법을 숙지하고, 다뤄보며 유연하고 몰입 가능한 협업을 위해 준비합니다.

// 1. 프로젝트 팀 선발

// ### 학습 점검을 통한 팀 빌딩

// 학습 스프린트 기간 동안의 각 구성원의 기술적 이해도를 점검합니다. 실제 프로젝트 환경에서 원활한 협업이 가능하도록 내부 선정 기준에 따라 프로젝트를 진행할 팀원을 선발합니다.



// - GitHub를 이용한 협업 관련 내용 숙지
// - 서비스 기획
// - 서비스 개발
// - 서비스 운영 및 유지보수