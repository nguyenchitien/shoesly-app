import 'package:flutter/material.dart';
import 'package:shoesly/commons/mixin/app_state_mixin.dart';
import 'package:shoesly/config/themes/app_colors.dart';
import 'package:shoesly/modules/authen/utils/authen_constants.dart';
import 'package:shoesly/modules/authen/widgets/slider_item_widget.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> with AppStateMixin {
  late final PageController pageController = PageController();
  late var currentPage = 1;

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
                    0.6, // just temp solution calculate height of PageView avoid layout error for some small devices.
                child: PageView.builder(
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return SliderItemWidget(kSliderItems[index]);
                  },
                  controller: pageController,
                  itemCount: kSliderItems.length,
                  onPageChanged: (index) => setState(() {
                    currentPage = index + 1;
                  }),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 200,
                child: StepProgressIndicator(
                  totalSteps: kSliderItems.length,
                  currentStep: currentPage,
                  selectedColor: AppColors.stepProgressColor,
                  unselectedColor: AppColors.neutral200,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
