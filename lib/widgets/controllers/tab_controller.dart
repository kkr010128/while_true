import 'package:flutter/material.dart';

class AchieveTabController extends StatefulWidget {
  final Color backgroundColor;
  final Color textColor;
  final ValueChanged<int> onTabSelected;

  const AchieveTabController({
    super.key,
    required this.onTabSelected,
    this.backgroundColor = const Color.fromARGB(225, 27, 27, 27),
    this.textColor = const Color.fromARGB(255, 255, 255, 255),
  });

  @override
  AchieveTabControllerState createState() => AchieveTabControllerState();
}

class AchieveTabControllerState extends State<AchieveTabController> {
  int _selectedIndex = 0;

  final List<String> _tabLabels = [
    "동아리 소개",
    "프로세스",
    "참여 후기",
    "모집요강",
    "지원하기",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      child: Row(
        children: List.generate(_tabLabels.length, (index) {
          return Expanded(
            child: _buildAnimatedTab(index), // 🔹 애니메이션 적용
          );
        }),
      ),
    );
  }

  /// 애니메이션이 적용된 탭 생성
  Widget _buildAnimatedTab(int index) {
    final bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        widget.onTabSelected(index);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300), // 애니메이션 지속 시간
        curve: Curves.easeInOut, // 부드러운 전환 효과
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected
                  ? Color.fromARGB(255, 164, 164, 255)
                  : Colors.transparent,
              width: 2, // 선택된 경우만 강조
            ),
          ),
        ),
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          style: TextStyle(
            color: isSelected
                ? widget.textColor
                : const Color.fromARGB(255, 255, 255, 255),
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 14, // 선택된 탭의 폰트 크기 증가
          ),
          child: Text(_tabLabels[index]),
        ),
      ),
    );
  }
}
