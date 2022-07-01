import 'package:flutter/material.dart';

import '../app_colors.dart';

// TODO: replace this with logo SVG

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 64,
      child: Center(
        child: Text(
          'Together',
          style: TextStyle(
            color: AppColors.brandColor,
            fontStyle: FontStyle.italic,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
