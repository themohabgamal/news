import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';

class BottomRoundedContainer extends StatelessWidget {
  final String description;
  const BottomRoundedContainer({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.all(16),
        height: MediaQuery.sizeOf(context).height / 2.5,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                description,
                style: AppTextStyles.font16RegularWhite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
