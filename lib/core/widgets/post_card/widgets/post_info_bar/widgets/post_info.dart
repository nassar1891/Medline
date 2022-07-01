import 'package:flutter/material.dart';
import 'package:medline/core/app_colors.dart';

class PostInfo extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;

  const PostInfo({
    required this.label,
    required this.icon,
    this.color = AppColors.brandColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
          size: 18,
        ),
        const SizedBox(width: 7),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(color: color),
        ),
      ],
    );
  }
}
