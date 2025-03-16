import 'package:tryCatch/widgets/bubble.dart';
import 'package:tryCatch/widgets/gallery.dart';
import 'package:flutter/material.dart';
import 'style_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewBubble extends StatelessWidget {
  final String profileImagePath;
  final List<String> messages;
  final bool isReversed; // 🔄 왼쪽/오른쪽 정렬 여부

  const ReviewBubble({
    super.key,
    required this.profileImagePath,
    required this.messages,
    this.isReversed = false, // 기본적으로 왼쪽 정렬
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isReversed ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (!isReversed) // 🔹 프로필 이미지 (왼쪽 배치)
          CircleAvatar(
            backgroundImage: AssetImage(profileImagePath),
            radius: 30,
          ),
        if (!isReversed) const SizedBox(width: 10), // 여백 추가

        // 🔹 말풍선과 꼬리 포함하는 Stack
        Stack(
          clipBehavior: Clip.none,
          children: [
            // 말풍선 컨테이너
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[900], // 다크 배경
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: messages
                    .map((msg) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            "“$msg”",
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),

            // 말풍선 꼬리
            Positioned(
              left: isReversed ? null : -10,
              right: isReversed ? -10 : null,
              top: 10,
              child: CustomPaint(
                size: const Size(15, 15),
                painter: BubbleTailPainter(isLeft: !isReversed),
              ),
            ),
          ],
        ),

        if (isReversed) const SizedBox(width: 10), // 오른쪽 정렬일 경우 여백 추가
        if (isReversed) // 🔹 프로필 이미지 (오른쪽 배치)
          CircleAvatar(
            backgroundImage: AssetImage(profileImagePath),
            radius: 30,
          ),
      ],
    );
  }
}

// 🔹 말풍선 꼬리 구현 (CustomPainter 사용)
class BubbleTailPainter extends CustomPainter {
  final bool isLeft;

  BubbleTailPainter({required this.isLeft});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.grey[900]!;

    var path = Path();
    if (isLeft) {
      path.moveTo(size.width, 0);
      path.quadraticBezierTo(0, size.height / 2, size.width, size.height);
    } else {
      path.moveTo(0, 0);
      path.quadraticBezierTo(size.width, size.height / 2, 0, size.height);
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
