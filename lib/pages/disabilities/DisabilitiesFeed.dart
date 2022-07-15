import 'package:flutter/material.dart';
import 'package:medline/core/models/area.dart';
import 'package:medline/core/models/disability_post.dart';
import 'package:medline/core/models/user.dart';
import 'package:medline/core/widgets/app_floating_action_button.dart';
import 'package:medline/core/widgets/page_bar.dart';
import 'package:medline/pages/disabilities/DisabilitiesState.dart';
import 'package:medline/pages/disabilities/widgets/disability_post_card.dart';
import '../../core/app_colors.dart';

class DisabilitiesFeed extends StatelessWidget {
  const DisabilitiesFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      floatingActionButton: AppFloatingActionButton(
        icon: const Icon(Icons.edit, color: AppColors.background),
        action: () {
          // TODO: implement
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) => const PostInDisabilities()),
          );
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 16,
            left: 16,
            bottom: 16,
          ),
          child: Column(
            children: [
              PageBar(
                title: 'Disabilities',
                // TODO: replace icon with SVG icon
                icon: const Icon(Icons.tune, color: AppColors.text, size: 30),
                action: () {
                  // TODO: implement
                },
              ),
              // TODO implement List View data fetching and processing
              Expanded(
                child: GlowingOverscrollIndicator(
                  axisDirection: AxisDirection.down,
                  color: AppColors.text,
                  child: ListView.separated(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return DisabilityPostCard(
                        disabilityPost: _fakeDisabilityPost,
                        action: () {
                          // TODO: implement
                        },
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(height: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final DisabilityPost _fakeDisabilityPost = DisabilityPost(
  id: '0',
  content:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  createdAt: DateTime.now(),
  state: DisabilityPostState.pending,
  area: Area(id: '0', title: 'Biyala'),
  user: User(
    id: '0',
    name: 'Hamada Helal',
    profilePictureUrl: 'https://via.placeholder.com/46',
  ),
);
