import 'package:flutter/material.dart';
import 'package:news/core/theme/app_colors.dart';
import 'package:news/features/home/presentation/widgets/carousel_with_indicator.dart';
import 'widgets/home_header_section.dart';
import 'widgets/home_tab_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeHeaderSection(),
                SizedBox(height: 20),
                CarouselWithIndicator(),
                HomeTabController(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
