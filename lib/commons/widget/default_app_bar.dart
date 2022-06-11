import 'package:flutter/material.dart';
import 'package:shoesly/commons/widget/rounded_icon_button.dart';
import 'package:shoesly/config/themes/app_colors.dart';

class DefaultAppBar extends StatelessWidget {
  final Function() onBackPressed;
  final String? title;

  const DefaultAppBar({
    Key? key,
    required this.onBackPressed,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 55,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RoundedIconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.neutral500),
            onPressed: onBackPressed,
            size: 48,
          ),
        ],
      ),
    );
  }
}
