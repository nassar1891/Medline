import 'package:flutter/material.dart';

import '../app_colors.dart';

class AuthenticationTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final int? maxLength;

  const AuthenticationTextField({
    required this.hint,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.maxLength,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? _style = Theme.of(context).textTheme.subtitle1?.copyWith(color: AppColors.text, height: 1);
    return Container(
      width: double.infinity,
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.text.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        maxLines: 1,
        maxLength: maxLength,
        buildCounter: (BuildContext context, {int currentLength = 0, bool isFocused = true, int? maxLength}) => const SizedBox(),
        style: _style,
        cursorColor: AppColors.text,
        keyboardType: keyboardType,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: _style?.copyWith(color: AppColors.text.withOpacity(0.5)),
        ),
      ),
    );
  }
}
