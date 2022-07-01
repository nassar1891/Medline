import 'package:flutter/material.dart';
import '../../../app_colors.dart';
import '../../../models/user.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostHeader extends StatelessWidget {
  final User user;
  final DateTime createdAt;
  final Function action;

  const PostHeader({
    required this.user,
    required this.createdAt,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String dateMessage = timeago
        .format(DateTime.now().subtract(DateTime.now().difference(createdAt)));
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 46 / 2,
          foregroundImage: NetworkImage(user.profilePictureUrl),
        ),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.name,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: AppColors.text),
            ),
            Row(
              children: [
                // TODO: replace with SVG Icon
                const Icon(
                  Icons.access_time_filled,
                  color: AppColors.text,
                  size: 16,
                ),
                const SizedBox(width: 5),
                Text(
                  dateMessage,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(color: AppColors.text),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () => action(),
          // TODO: replace with SVG Icon
          icon: const Icon(
            Icons.more_horiz,
            color: AppColors.text,
            size: 24,
          ),
        ),
      ],
    );
  }
}
