import 'package:flutter/material.dart';
import '../../../core/app_colors.dart';

class RegistrationHeader extends StatelessWidget {
  const RegistrationHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78,
      width: double.infinity,
      child: Text(
        'Welcome, fill the forum to\nbecome our guest.',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline5?.copyWith(color: AppColors.text),
      ),
    );
  }
}
