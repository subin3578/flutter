import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final FormFieldSetter<String>? onSaved;

  const CustomTextFormField(this.label, this.onSaved, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '${label} 을 입력하세요';
        }
        return null;
      },
      // save 호출 시 데이터 저장
      onSaved: onSaved,
    );
  }
}
