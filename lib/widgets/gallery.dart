import 'dart:async';
import 'package:flutter/material.dart';

class InfiniteGallery extends StatefulWidget {
  final List<String> imagePaths; // 이미지 경로 리스트
  final double height; // 갤러리 높이
  final double width; // 갤러리 너비

  const InfiniteGallery({
    super.key,
    required this.imagePaths,
    this.height = 250,
    this.width = double.infinity,
  });

  @override
  _InfiniteGalleryState createState() => _InfiniteGalleryState();
}

class _InfiniteGalleryState extends State<InfiniteGallery> {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _autoScrollTimer;

  @override
  void initState() {
    super.initState();
    _pageController =
        PageController(initialPage: 1000); // 무한 스크롤처럼 보이도록 큰 값으로 시작
    _startAutoScroll(); // 자동 스크롤 시작
  }

  void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (_pageController.hasClients) {
        _currentPage++;
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _autoScrollTimer?.cancel(); // 타이머 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final realIndex = index % widget.imagePaths.length;
          return _buildImage(widget.imagePaths[realIndex]);
        },
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0), // 이미지 간격 조정
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8), // 🔹 Border Radius 적용
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover, // 🔹 부모 크기에 맞게 조절
          width: widget.width, // 🔹 Gallery 너비에 맞게 자동 조정
          height: widget.height, // 🔹 Gallery 높이에 맞게 자동 조정
        ),
      ),
    );
  }
}
