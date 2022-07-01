import 'package:flutter/material.dart';
import '../app_colors.dart';

class NextButton extends StatelessWidget {
  final Function action;

  const NextButton({required this.action, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => action(),
      style: ElevatedButton.styleFrom(
        primary: AppColors.brandColor.withOpacity(0.2),
        elevation: 0,
        minimumSize: const Size(double.infinity, 56),
        shape: const StadiumBorder(),
      ),
      child: Text(
        'NEXT',
        style: Theme.of(context).textTheme.headline6?.copyWith(color: AppColors.brandColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
