import 'package:flutter/material.dart';
import 'package:news/features/home/data/news_model.dart';

import 'home_content_header.dart';
import 'top_stories_vertical_list_view.dart';

class HomeTopStoriesSection extends StatelessWidget {
  final List<News> data;
  const HomeTopStoriesSection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeContentHeader(
          title: 'Top Stories',
          onPressed: () {},
        ),
        TopStoriesVerticalListView(
          data: data,
        ),
      ],
    );
  }
}
