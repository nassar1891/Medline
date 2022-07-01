import 'package:flutter/material.dart';
import '../app_colors.dart';

class AppFloatingActionButton extends StatelessWidget {
  final Function action;
  final Widget icon;

  const AppFloatingActionButton({
    required this.action,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      backgroundColor: AppColors.text,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: icon,
      onPressed: () => action(),
    );
  }
}
