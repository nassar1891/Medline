import 'package:flutter/material.dart';
import 'package:medline/core/widgets/post_card/widgets/post_info_bar/widgets/post_info.dart';
import '../../../../app_colors.dart';

class PostInfoBar extends StatelessWidget {
  final List<PostInfo> postInfo;

  const PostInfoBar({
    required this.postInfo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.background),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: postInfo,
      ),
    );
  }
}
