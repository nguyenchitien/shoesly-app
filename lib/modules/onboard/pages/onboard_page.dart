import 'package:flutter/material.dart';
import 'package:shoesly/commons/widget/custom_button_widget.dart';
import 'package:shoesly/modules/onboard/models/slider_item.dart';
import 'package:shoesly/modules/onboard/widgets/slider_item_widget.dart';
import 'package:shoesly/themes/app_colors.dart';
import 'package:shoesly/utils/ui_data.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  static const sliderItems = [
    SliderItem(
      UIData.onboardIcon01,
      "Enjoy The New Arrival Product",
      "Get your dream item easily and safely with Shoesly. and get other interesting offers",
    ),
    SliderItem(
      UIData.onboardIcon02,
      "Guaranteed Safe Delivery",
      "Get your dream item easily and safely with Shoesly. and get other interesting offers",
    ),
    SliderItem(
      UIData.onboardIcon03,
      "Goods Arrived On Time",
      "Get your dream item easily and safely with Shoesly. and get other interesting offers",
    ),
  ];

  final PageController pageController = PageController();
  late var currentPage = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.6, // // just temp solution calculate height of PageView avoid layout error for some small devices.
                child: PageView.builder(
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return SliderItemWidget(sliderItems[index]);
                  },
                  controller: pageController,
                  itemCount: sliderItems.length,
                  onPageChanged: (index) => setState(() {
                    currentPage = index + 1;
                  }),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 200,
                child: StepProgressIndicator(
                  totalSteps: sliderItems.length,
                  currentStep: currentPage,
                  selectedColor: AppColors.stepProgressColor,
                  unselectedColor: AppColors.neutral200,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomButtonWidget(
                      title: "Get started",
                      onPressed: () {},
                    ),
                    const SizedBox(height: 20),
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
                        const SizedBox(width: 15),
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
