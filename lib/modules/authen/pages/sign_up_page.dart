import 'package:flutter/material.dart';
import 'package:shoesly/commons/widget/auto_hide_keyboard.dart';
import 'package:shoesly/commons/widget/custom_button_widget.dart';
import 'package:shoesly/commons/widget/custom_space.dart';
import 'package:shoesly/commons/widget/custom_text_field.dart';
import 'package:shoesly/commons/widget/input_row_widget.dart';
import 'package:shoesly/commons/widget/remove_scroll_grow.dart';
import 'package:shoesly/modules/authen/utils/AppStateMixin.dart';
import 'package:shoesly/themes/app_colors.dart';
import 'package:shoesly/utils/ui_data.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with AppStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: AutoHideKeyboard(
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: RemoveScrollGrow(
              child: ListView(
                children: [
                  const SizedBox(height: 50),
                  Text(
                    "Create Account",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: AppColors.neutral500,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: 10),
                  const Text("Please sign in to your Shoesly Account"),
                  const SizedBox(height: 38),
                  const InputRowWidget(
                    title: "Name",
                    textFormField: CustomTextField(
                      hintText: "Enter your name",
                    ),
                  ),
                  const VerticalSpace(30),
                  const InputRowWidget(
                    title: "Email",
                    textFormField: CustomTextField(
                      hintText: "Enter your email",
                    ),
                  ),
                  const VerticalSpace(30),
                  InputRowWidget(
                    title: "Password",
                    textFormField: CustomTextField(
                      hintText: "Enter your password",
                      obscureText: true,
                      suffixIcon: Image.asset(
                        UIData.viewPasswordIcon,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  const VerticalSpace(30),
                  InputRowWidget(
                    title: "Confirm Password",
                    textFormField: CustomTextField(
                      hintText: "Enter your password",
                      obscureText: true,
                      suffixIcon: Image.asset(
                        UIData.viewPasswordIcon,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  const VerticalSpace(30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: Checkbox(
                            value: true,
                            onChanged: (checked) {},
                            shape: const CircleBorder(),
                          ),
                        ),
                      ),
                      const HorizontalSpace(12),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: "By Signing up, you agree to the ",
                            style: Theme.of(context).textTheme.subtitle1,
                            children: [
                              TextSpan(
                                text: "Terms of Service and Privacy Policy",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.neutral500),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const VerticalSpace(50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CustomButtonWidget(
                        title: "Create Account",
                        onPressed: handleSignUp,
                      ),
                      const VerticalSpace(20),
                      Row(
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
                      ),
                    ],
                  ),
                  const VerticalSpace(20),
                  RichText(
                    text: TextSpan(
                      text: "Have Account ? ",
                      style: Theme.of(context).textTheme.bodyText2,
                      children: [
                        TextSpan(
                          text: "Sign In Now",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.neutral500),
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const VerticalSpace(20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
