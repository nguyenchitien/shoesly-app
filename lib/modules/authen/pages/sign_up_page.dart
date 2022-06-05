import 'package:flutter/material.dart';
import 'package:shoesly/commons/widget/custom_button_widget.dart';
import 'package:shoesly/commons/widget/custom_space.dart';
import 'package:shoesly/commons/widget/custom_text_field.dart';
import 'package:shoesly/commons/widget/input_row_widget.dart';
import 'package:shoesly/themes/app_colors.dart';
import 'package:shoesly/utils/ui_data.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Text(
                "Sign In",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: AppColors.neutral500,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(height: 10),
              const Text("Please sign up to your Shoesly Account"),
              const SizedBox(height: 71),
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
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomButtonWidget(
                      title: "Sign up",
                      onPressed: () {},
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
                    const VerticalSpace(20),
                    RichText(
                      text: TextSpan(
                        text: "Join with us, ",
                        style: Theme.of(context).textTheme.bodyText2,
                        children: [
                          TextSpan(
                            text: "Create Account",
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
