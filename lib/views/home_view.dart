import 'package:tryCatch/views/assign_view.dart';
import 'package:tryCatch/views/intro_view.dart';
import 'package:tryCatch/views/process_view.dart';
import 'package:tryCatch/views/recruit_view.dart';
import 'package:tryCatch/views/review_view.dart';
import 'package:tryCatch/widgets/controllers/tab_controller.dart';
import 'package:flutter/material.dart';
import '../viewmodels/home_viewmodel.dart';
import '../widgets/banner/banner.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  final HomeViewModel viewModel = HomeViewModel();
  int selectedTab = 0; // 선택한 탭 ID를 저장
  final ScrollController _scrollController =
      ScrollController(); // 🔹 ScrollController 추가

  // 탭 변경 시 상태 업데이트
  void onTabChanged(int tabId) {
    setState(() {
      selectedTab = tabId;
    });
  }

  // 선택한 탭에 따라 다른 페이지 표시
  Widget _getSelectedPage() {
    switch (selectedTab) {
      case 0:
        return IntroView();
      case 1:
        return ProcessView();
      case 2:
        return ReviewView();
      case 3:
        return RecruitView();
      default:
        return AssignView();
    }
  }

  // 🔹 화면 최상단으로 이동하는 함수
  void _scrollToTop() {
    _scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bannerData = viewModel.getBannerData();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _scrollToTop, // 🔹 버튼 클릭 시 최상단으로 이동
        backgroundColor: Color.fromARGB(225, 96, 97, 255),
        child: const Icon(Icons.arrow_upward, color: Colors.white),
      ),
      body: SingleChildScrollView(
        controller: _scrollController, // 🔹 ScrollController 연결
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            BannerWidget(
              imagePath: 'assets/banner.png',
              title: bannerData.title,
              buttonText: bannerData.buttonText,
              onPressed: null,
            ),
            AchieveTabController(
              onTabSelected: onTabChanged, // 선택된 탭 ID 저장
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 40),
              child: _getSelectedPage(), // 선택된 페이지 표시
            ),
          ],
        ),
      ),
    );
  }
}

// IntroView의 "자세히 보기" 버튼 수정

