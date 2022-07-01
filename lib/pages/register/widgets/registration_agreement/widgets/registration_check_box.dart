import 'package:flutter/material.dart';

import '../../../../../core/app_colors.dart';

class RegistrationCheckBox extends StatelessWidget {
  final bool value;
  final void Function(bool?) onChanged;

  const RegistrationCheckBox({required this.value, required this.onChanged, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 24, maxHeight: 24),
      child: Checkbox(
        value: value,
        onChanged: onChanged,
        fillColor: MaterialStateProperty.all(AppColors.brandColor),
        activeColor: AppColors.brandColor,
        checkColor: AppColors.background,
      ),
    );
  }
}
