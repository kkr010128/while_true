import 'package:flutter/material.dart';

class FAQWidget extends StatelessWidget {
  final List<Map<String, String>> faqs;

  const FAQWidget({super.key, required this.faqs});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: faqs.map((faq) {
        return Card(
          elevation: 2,
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 25),
          child: ExpansionTile(
            title: Text(
              faq["question"] ?? "",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  faq["answer"] ?? "",
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

// 예제 데이터와 함께 FAQ 위젯을 표시하는 코드
class QuestionAnswerScreen extends StatelessWidget {
  const QuestionAnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("자주 묻는 질문")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: FAQWidget(
            faqs: [],
          ),
        ),
      ),
    );
  }
}
