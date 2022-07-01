import 'package:flutter/material.dart';
import 'package:medline/core/models/donation_post.dart';
import 'package:medline/core/widgets/post_card/post_card.dart';
import 'package:medline/core/widgets/post_card/widgets/post_header.dart';
import 'package:medline/core/widgets/post_card/widgets/post_info_bar/widgets/post_info.dart';
import 'package:medline/core/widgets/post_card/widgets/post_info_bar/post_info_bar.dart';

class DonationPostCard extends StatelessWidget {
  final DonationPost donationPost;
  final Function action;

  const DonationPostCard({
    required this.donationPost,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostCard(
      postHeader: PostHeader(user: donationPost.user, createdAt: donationPost.createdAt, action: action),
      postInfoBar: PostInfoBar(
        postInfo: [
          PostInfo(label: donationPost.bloodType.toReadableString(), icon: Icons.water_drop),
          PostInfo(label: donationPost.area.title, icon: Icons.location_on),
          PostInfo(label: donationPost.peopleCount.toString(), icon: Icons.people),
        ],
      ),
      content: donationPost.content,
    );
  }
}
