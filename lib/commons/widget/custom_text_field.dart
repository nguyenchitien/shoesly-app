import 'package:flutter/material.dart';
import 'package:shoesly/config/themes/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;
  final String? hintText;
  final bool autoCorrect;
  final double? borderRadius;
  final TextEditingController? controller;
  final bool autoFocus;
  final Function(String)? onChanged;
  final int maxLines;
  final bool obscureText;
  final String? error;
  final FocusNode? focusNode;
  final Border? border;
  final bool readOnly;
  final TextStyle? hintTextStyle;
  final bool enableFocusBorder;

  const CustomTextField({
    Key? key,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.borderRadius,
    this.controller,
    this.onChanged,
    this.maxLines = 1,
    this.error,
    this.focusNode,
    this.border,
    this.prefix,
    this.suffix,
    this.hintTextStyle,
    this.autoCorrect = true,
    this.autoFocus = false,
    this.obscureText = false,
    this.readOnly = false,
    this.enableFocusBorder = true,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var isFocusTextField = false;
  late final FocusNode focusNode;

  @override
  void initState() {
    super.initState();

    focusNode = widget.focusNode ?? FocusNode();
    focusNode.addListener(handleFocusTextField);
  }

  @override
  void dispose() {
    focusNode.removeListener(handleFocusTextField);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: isFocusTextField && widget.enableFocusBorder
            ? const Border(bottom: BorderSide(color: AppColors.neutral500))
            : null,
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: widget.enableFocusBorder ? 20 : 0),
        child: TextFormField(
          focusNode: focusNode,
          autocorrect: widget.autoCorrect,
          obscureText: widget.obscureText,
          readOnly: widget.readOnly,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: AppColors.neutral500),
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.zero,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            hintText: widget.hintText,
            suffix: widget.suffix,
            prefix: widget.prefix,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            prefixIconConstraints:
                const BoxConstraints(minWidth: 32, minHeight: 32),
            suffixIconConstraints:
                const BoxConstraints(minWidth: 32, minHeight: 32),
            hintStyle: widget.hintTextStyle ??
                Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: AppColors.neutral500),
          ),
          controller: widget.controller,
          autofocus: widget.autoFocus,
          onChanged: widget.onChanged,
          maxLines: widget.maxLines,
          textAlignVertical: TextAlignVertical.center,
        ),
      ),
    );
  }

  void handleFocusTextField() {
    setState(() {
      isFocusTextField = focusNode.hasFocus;
    });
  }
}
