import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/style_text.dart';
import '../utils/save_apply.dart';

class AssignView extends StatefulWidget {
  const AssignView({super.key});

  @override
  _AssignViewState createState() => _AssignViewState();
}

class _AssignViewState extends State<AssignView> {
  String? _selectedGender;
  final TextEditingController _studentIdController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _motivationController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.transparent,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            H2Text(text: "tryCatch() 지원서 작성\n", color: Colors.white),
            H3Text(
                text: "아래 내용을 작성해 제출하시면\n면접 일정을 안내해드리겠습니다\n\n",
                color: Colors.white),
            _buildStudentIdField(),
            _buildNameField(),
            _buildAgeField(),
            _buildPhoneField(),
            _buildGenderSelection(),
            _buildMotivationField(),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(225, 96, 97, 255),
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  await saveToNotion(
                    _studentIdController.text,
                    _nameController.text,
                    _ageController.text,
                    _selectedGender ?? "",
                    _phoneController.text,
                    _motivationController.text,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text("지원서 제출이 완료되었습니다. 지원해주셔서 감사합니다.")),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("모든 필드를 입력하세요.")),
                  );
                }
              },
              child: const Text(
                "제출하기",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStudentIdField() {
    return _buildTextField(
      label: "학번",
      controller: _studentIdController,
      maxLength: 10,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      validator: (value) {
        if (value == null || value.length != 10) return "10자리 숫자를 입력하세요.";
        return null;
      },
    );
  }

  Widget _buildNameField() {
    return _buildTextField(
      label: "이름",
      controller: _nameController,
      maxLength: 7,
      validator: (value) {
        if (value == null || value.isEmpty) return "이름을 입력하세요.";
        if (value.length > 7) return "최대 7자까지 입력 가능합니다.";
        return null;
      },
    );
  }

  Widget _buildAgeField() {
    return _buildTextField(
      label: "나이",
      controller: _ageController,
      maxLength: 2,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      validator: (value) {
        if (value == null || value.isEmpty) return "나이를 입력하세요.";
        if (!RegExp(r'^[0-9]{1,2}$').hasMatch(value)) return "숫자만 입력 가능합니다.";
        return null;
      },
    );
  }

  Widget _buildGenderSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: RadioListTile<String>(
                title: const Text("남자", style: TextStyle(color: Colors.white)),
                value: "남자",
                groupValue: _selectedGender,
                activeColor: Color.fromARGB(225, 96, 97, 255), // 선택된 색상
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
            ),
            Expanded(
              child: RadioListTile<String>(
                title: const Text("여자", style: TextStyle(color: Colors.white)),
                value: "여자",
                groupValue: _selectedGender,
                activeColor: Color.fromARGB(225, 96, 97, 255), // 선택된 색상
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPhoneField() {
    return _buildTextField(
      label: "연락처",
      controller: _phoneController,
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(11),
        TextInputFormatter.withFunction((oldValue, newValue) {
          String text = newValue.text;
          if (text.length > 3 && text.length <= 7) {
            return TextEditingValue(
                text: '${text.substring(0, 3)}-${text.substring(3)}',
                selection: TextSelection.collapsed(offset: text.length + 1));
          } else if (text.length > 7) {
            return TextEditingValue(
                text:
                    '${text.substring(0, 3)}-${text.substring(3, 7)}-${text.substring(7)}',
                selection: TextSelection.collapsed(offset: text.length + 2));
          }
          return newValue;
        }),
      ],
      validator: (value) {
        if (value == null || value.isEmpty) return "전화번호를 입력하세요.";
        if (!RegExp(r'^\d{3}-\d{4}-\d{4}$').hasMatch(value))
          return "올바른 전화번호 형식을 입력하세요.";
        return null;
      },
    );
  }

  Widget _buildMotivationField() {
    return _buildTextField(
      label: "지원 동기",
      controller: _motivationController,
      maxLines: 4,
      maxLength: 800,
      validator: (value) {
        if (value == null || value.isEmpty) return "지원 동기를 입력하세요.";
        if (value.length > 800) return "최대 800자까지 입력 가능합니다.";
        return null;
      },
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    int maxLines = 1,
    int? maxLength,
    TextInputType keyboardType = TextInputType.text,
    List<TextInputFormatter>? inputFormatters,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        maxLength: maxLength,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        style: TextStyle(color: Colors.white),
        cursorColor: Color.fromARGB(225, 96, 97, 255),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
              color: const Color.fromARGB(255, 134, 134, 134),
              fontWeight: FontWeight.w500),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide:
                BorderSide(color: Color.fromARGB(225, 96, 97, 255), width: 2),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        validator: validator,
        onChanged: (_) => setState(() {}),
      ),
    );
  }

  bool _isFormValid() {
    return _formKey.currentState?.validate() == true && _selectedGender != null;
  }
}
