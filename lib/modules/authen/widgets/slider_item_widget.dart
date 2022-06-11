import 'package:flutter/material.dart';
import 'package:shoesly/modules/authen/models/onboard_slider_item.dart';
import 'package:shoesly/themes/app_colors.dart';

class SliderItemWidget extends StatelessWidget {
  final SliderItem item;

  const SliderItemWidget(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: SizedBox(
        height: 490,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const Spacer(),
              Image.asset(item.imageUrl, width: 300, height: 300),
              const Spacer(),
              Text(
                item.title,
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.apply(color: AppColors.neutral500),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                item.subTitle,
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
