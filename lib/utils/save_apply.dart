import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';

final String notionApiKey = Platform.environment['NOTION_API_KEY'] ?? "";
final String databaseId = Platform.environment['DATABASE_ID'] ?? "";

Future<void> saveToNotion(String studentId, String name, String age,
    String gender, String phone, String motivation) async {
  final url = "https://api.notion.com/v1/pages";

  final Map<String, dynamic> requestBody = {
    "parent": {"database_id": databaseId},
    "properties": {
      "Name": {
        // 🔹 제목 필드로 학번 + 이름 설정
        "title": [
          {
            "text": {"content": "tryCatch() 1기 지원서: [ $studentId ][ $name ]"}
          }
        ]
      }
    },
    "children": [
      // 🔹 페이지 내부에 지원 정보 저장
      {
        "object": "block",
        "type": "paragraph",
        "paragraph": {
          "rich_text": [
            {
              "text": {"content": "### 📌 학번: $studentId"}
            }
          ]
        }
      },
      {
        "object": "block",
        "type": "paragraph",
        "paragraph": {
          "rich_text": [
            {
              "text": {"content": "### 👤 이름: $name"}
            }
          ]
        }
      },
      {
        "object": "block",
        "type": "paragraph",
        "paragraph": {
          "rich_text": [
            {
              "text": {"content": "### 🎂 나이: $age"}
            }
          ]
        }
      },
      {
        "object": "block",
        "type": "paragraph",
        "paragraph": {
          "rich_text": [
            {
              "text": {"content": "### 🚻 성별: $gender"}
            }
          ]
        }
      },
      {
        "object": "block",
        "type": "paragraph",
        "paragraph": {
          "rich_text": [
            {
              "text": {"content": "### 📞 전화번호: $phone"}
            }
          ]
        }
      },
      {
        "object": "block",
        "type": "paragraph",
        "paragraph": {
          "rich_text": [
            {
              "text": {"content": "📝 지원 동기: $motivation"}
            }
          ]
        }
      }
    ]
  };

  final response = await http.post(
    Uri.parse(url),
    headers: {
      "Authorization": "Bearer $notionApiKey",
      "Content-Type": "application/json",
      "Notion-Version": "2022-06-28"
    },
    body: jsonEncode(requestBody),
  );

  if (response.statusCode == 200 || response.statusCode == 201) {
    print("✅ Notion 데이터 저장 성공!");
  } else {
    print("❌ Notion 데이터 저장 실패: ${response.body}");
  }
}
