import 'package:flutter/material.dart';
import 'package:news/features/home/presentation/widgets/home_custom_tab_bar.dart';
import 'package:news/features/home/presentation/widgets/home_tab_bar_content.dart';

class HomeTabController extends StatelessWidget {
  const HomeTabController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          HomeCustomTabBar(),
          HomeTabBarContent(),
        ],
      ),
    );
  }
}
