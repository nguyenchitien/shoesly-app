import 'package:flutter/material.dart';
import 'package:shoesly/commons/mixin/app_state_mixin.dart';
import 'package:shoesly/commons/widget/custom_button_widget.dart';
import 'package:shoesly/commons/widget/custom_space.dart';
import 'package:shoesly/config/themes/app_colors.dart';
import 'package:shoesly/utils/ui_data.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with AppStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(UIData.welcomeToIcon),
              const Spacer(),
              Text(
                "Welcome To The Club Of Shoesly!",
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: AppColors.neutral500),
                textAlign: TextAlign.center,
              ),
              const VerticalSpace(20),
              Text(
                "Your account has been created successfully!",
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              CustomButtonWidget(
                title: "Let’s Search Shoes!",
                onPressed: gotoDashBoard,
              ),
              const VerticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
