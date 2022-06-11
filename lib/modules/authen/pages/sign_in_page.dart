import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shoesly/commons/mixin/app_state_mixin.dart';
import 'package:shoesly/commons/widget/auto_hide_keyboard.dart';
import 'package:shoesly/commons/widget/custom_button_widget.dart';
import 'package:shoesly/commons/widget/custom_space.dart';
import 'package:shoesly/commons/widget/custom_text_field.dart';
import 'package:shoesly/commons/widget/input_row_widget.dart';
import 'package:shoesly/commons/widget/remove_scroll_grow.dart';
import 'package:shoesly/config/themes/app_colors.dart';
import 'package:shoesly/modules/authen/widgets/social_buttons.dart';
import 'package:shoesly/utils/ui_data.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with AppStateMixin {
  @override
  Widget build(BuildContext context) {
    final isKeyBoardShowing = MediaQuery.of(context).viewInsets.bottom > 0;
    final double spaceSize =
        isKeyBoardShowing ? 40 : MediaQuery.of(context).size.height * 0.25;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: AutoHideKeyboard(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: RemoveScrollGrow(
              child: ListView(
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
                  const Text("Please sign in to your Shoesly Account"),
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
                      suffix: Image.asset(
                        UIData.viewPasswordIcon,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  VerticalSpace(spaceSize),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomButtonWidget(
                          title: "Sign In",
                          onPressed: handleSignIn,
                        ),
                        const VerticalSpace(20),
                        const SocialButtons(),
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
                                recognizer: TapGestureRecognizer()
                                  ..onTap = gotoSignUpPage,
                              ),
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
        ),
      ),
    );
  }
}
