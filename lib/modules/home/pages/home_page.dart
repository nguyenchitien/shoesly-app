import 'package:flutter/material.dart';
import 'package:shoesly/commons/widget/auto_hide_keyboard.dart';
import 'package:shoesly/commons/widget/custom_text_field.dart';
import 'package:shoesly/commons/widget/rounded_icon_button.dart';
import 'package:shoesly/config/themes/app_colors.dart';
import 'package:shoesly/utils/ui_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoHideKeyboard(
        child: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: CustomTextField(
                  hintText: "What are you looking for?",
                  enableFocusBorder: false,
                  prefixIcon: RoundedIconButton(
                    icon: Image.asset(UIData.searchIcon),
                    size: 32,
                    onPressed: () {},
                  ),
                  suffixIcon: RoundedIconButton(
                    icon: Image.asset(UIData.cameraIcon),
                    size: 32,
                    onPressed: () {},
                  ),
                  hintTextStyle: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .apply(color: AppColors.neutral300),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
