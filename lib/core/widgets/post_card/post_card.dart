import 'package:flutter/material.dart';
import 'package:medline/core/app_colors.dart';
import 'package:medline/core/widgets/post_card/widgets/post_header.dart';
import 'package:medline/core/widgets/post_card/widgets/post_info_bar/post_info_bar.dart';

class PostCard extends StatelessWidget {
  final PostHeader postHeader;
  final PostInfoBar postInfoBar;
  final String content;

  const PostCard({
    required this.postHeader,
    required this.postInfoBar,
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.text.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          postHeader,
          const SizedBox(height: 10),
          postInfoBar,
          const SizedBox(height: 15),
          Text(
            content,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(color: AppColors.text),
          ),
        ],
      ),
    );
  }
}
