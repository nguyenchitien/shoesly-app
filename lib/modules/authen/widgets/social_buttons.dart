import 'package:flutter/material.dart';
import 'package:shoesly/commons/widget/custom_button_widget.dart';
import 'package:shoesly/commons/widget/custom_space.dart';
import 'package:shoesly/utils/ui_data.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButtonWidget(
            onPressed: () {},
            icon: Image.asset(
              UIData.googleIcon,
              width: 20,
              height: 20,
            ),
            title: "Google",
            type: ButtonType.secondary,
          ),
        ),
        const HorizontalSpace(15),
        Expanded(
          child: CustomButtonWidget(
            onPressed: () {},
            icon: Image.asset(
              UIData.facebookIcon,
              width: 20,
              height: 20,
            ),
            title: "Facebook",
            type: ButtonType.secondary,
          ),
        ),
      ],
    );
  }
}
