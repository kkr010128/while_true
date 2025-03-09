import 'package:achieve_plus/views/home_view.dart';
import 'package:flutter/material.dart';
import '../widgets/controllers/tab_controller.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 250.0, // 배너 영역 높이 설정
            floating: false,
            pinned: true, // 스크롤 시 상단에 고정
            flexibleSpace: FlexibleSpaceBar(
              background: HomeView(), // HomeView를 배너로 설정
            ),
          ),
        ],
        body: Column(
          children: [
            // Expanded(child: AchieveTabController()), // 하단 탭바 컨트롤러
          ],
        ),
      ),
    );
  }
}
