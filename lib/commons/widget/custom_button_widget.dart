import 'package:flutter/material.dart';
import 'package:shoesly/themes/app_colors.dart';
import 'package:shoesly/themes/styles_text.dart';

enum ButtonType { primary, secondary }

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final Image? icon;
  final Function()? onPressed;
  final ButtonType type;

  const CustomButtonWidget({
    Key? key,
    required this.title,
    this.icon,
    this.onPressed,
    this.type = ButtonType.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderColor = type == ButtonType.primary
        ? Colors.white.withOpacity(0.2)
        : AppColors.neutral200;
    final bgColor =
        type == ButtonType.primary ? AppColors.neutral500 : AppColors.white;
    final white02 = type == ButtonType.primary
        ? Colors.white.withOpacity(0.2)
        : AppColors.neutral200;

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: 16),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(bgColor),
        overlayColor: MaterialStateProperty.all<Color>(white02),
        shadowColor: MaterialStateProperty.all<Color>(white02),
        foregroundColor: MaterialStateProperty.all<Color>(white02),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
            side: BorderSide(color: borderColor, width: 1),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(0.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: icon,
            ),
          Text(
            title.toUpperCase(),
            style: StylesText.headline300.apply(
                color: type == ButtonType.primary
                    ? AppColors.white
                    : AppColors.neutral500),
          ),
        ],
      ),
    );
  }
}
