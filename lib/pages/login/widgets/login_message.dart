import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class LoginMessage extends StatelessWidget {
  const LoginMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Please enter your phone number.',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(color: AppColors.text),
    );
  }
}
