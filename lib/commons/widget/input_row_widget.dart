import 'package:flutter/material.dart';
import 'package:shoesly/commons/widget/custom_space.dart';
import 'package:shoesly/commons/widget/custom_text_field.dart';
import 'package:shoesly/config/themes/app_colors.dart';
import 'package:shoesly/config/themes/styles_text.dart';

class InputRowWidget extends StatelessWidget {
  final String title;
  final CustomTextField textFormField;
  const InputRowWidget({
    Key? key,
    required this.title,
    required this.textFormField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: StylesText.headline300.copyWith(
            color: AppColors.neutral500,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
        const VerticalSpace(10),
        textFormField,
      ],
    );
  }
}
