import 'package:flutter/material.dart';
import 'package:medline/core/app_colors.dart';

class PageBar extends StatelessWidget {
  final String title;
  final Widget icon;
  final Function action;

  const PageBar({
    required this.title,
    required this.icon,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Align(
        alignment: Alignment.center,
        child: Row(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline5?.copyWith(color: AppColors.text),
            ),
            const Spacer(),
            icon,
          ],
        ),
      ),
    );
  }
}
