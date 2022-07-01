import 'package:flutter/material.dart';
import 'package:medline/core/app_colors.dart';
import 'package:medline/core/models/disability_post.dart';
import 'package:medline/core/widgets/post_card/post_card.dart';
import 'package:medline/core/widgets/post_card/widgets/post_header.dart';
import 'package:medline/core/widgets/post_card/widgets/post_info_bar/widgets/post_info.dart';
import 'package:medline/core/widgets/post_card/widgets/post_info_bar/post_info_bar.dart';

class DisabilityPostCard extends StatelessWidget {
  final DisabilityPost disabilityPost;
  final Function action;

  const DisabilityPostCard({
    required this.disabilityPost,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color stateColor = disabilityPost.state == DisabilityPostState.pending
        ? AppColors.secondaryColor
        : AppColors.brandColor;
    return PostCard(
      postHeader: PostHeader(
          user: disabilityPost.user,
          createdAt: disabilityPost.createdAt,
          action: action),
      postInfoBar: PostInfoBar(
        postInfo: [
          // TODO: replace with SVG Icons
          PostInfo(
              label: disabilityPost.state.toReadableString(),
              icon: Icons.album,
              color: stateColor),
          PostInfo(label: disabilityPost.area.title, icon: Icons.location_on),
        ],
      ),
      content: disabilityPost.content,
    );
  }
}
