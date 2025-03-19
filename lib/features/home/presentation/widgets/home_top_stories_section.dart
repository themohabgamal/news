import 'package:flutter/material.dart';

import 'home_content_header.dart';
import 'top_stories_vertical_list_view.dart';

class HomeTopStoriesSection extends StatelessWidget {
  const HomeTopStoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeContentHeader(
          title: 'Top Stories',
          onPressed: () {},
        ),
        TopStoriesVerticalListView(),
      ],
    );
  }
}
