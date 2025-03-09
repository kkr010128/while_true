import 'package:flutter/material.dart';

class RouteButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 버튼 간격 균등 정렬
      children: [
        _buildButton("동아리 소개"),
        _buildButton("학습 프로세스"),
        _buildButton("개발 프로세스"),
        _buildButton("지원하기"),
      ],
    );
  }

  /// 버튼 위젯을 공통으로 생성하는 함수
  Widget _buildButton(String text) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          backgroundColor: Color.fromARGB(225, 27, 27, 27), // 앱 배경색
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero), // 모서리 둥글기 제거
          padding: EdgeInsets.zero, // 내부 여백 최소화
          textStyle: const TextStyle(fontSize: 14),
          alignment: Alignment.center, // 텍스트 중앙 정렬
        ),
        onPressed: () => print("$text 클릭"),
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 164, 164, 255),
            )),
      ),
    );
  }
}
