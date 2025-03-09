import 'package:achieve_plus/views/intro_view.dart';
import 'package:achieve_plus/widgets/controllers/tab_controller.dart';
import 'package:flutter/material.dart';
import '../viewmodels/home_viewmodel.dart';
import '../widgets/banner/banner.dart';
import '../widgets/route_buttons.dart';

class HomeView extends StatelessWidget {
  final HomeViewModel viewModel = HomeViewModel();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final bannerData = viewModel.getBannerData();

    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [
          BannerWidget(
            imagePath: 'assets/banner.png',
            title: bannerData.title,
            buttonText: bannerData.buttonText,
            onPressed: null,
          ),
          // 필요한 경우 Expanded로 감싸서 공간을 채울 수 있음
          // RouteButtons(),
          AchieveTabController(
            onTabSelected: (int selectedTab) {
              print("선택한 탭 ID: $selectedTab"); // 부모에서 선택된 탭 값 처리
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 40),
            child: IntroView(),
          ),
        ],
      ),
    );
  }
}
