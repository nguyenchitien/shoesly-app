import 'package:flutter/material.dart';
import 'package:shoesly/themes/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsets? padding;
  final String? hintText;
  final bool autoCorrect;
  final double? spacing;
  final EdgeInsets? margin;
  final double? borderRadius;
  final TextEditingController? controller;
  final bool autoFocus;
  final Function(String)? onChanged;
  final int maxLines;
  final bool obscureText;
  final String? error;
  final bool enableBorder;
  final FocusNode? focusNode;
  final Border? border;
  final bool readOnly;

  const CustomTextField({
    Key? key,
    this.prefixIcon,
    this.suffixIcon,
    this.padding,
    this.hintText,
    this.spacing,
    this.margin,
    this.autoCorrect = true,
    this.autoFocus = false,
    this.obscureText = false,
    this.enableBorder = true,
    this.readOnly = false,
    this.borderRadius,
    this.controller,
    this.onChanged,
    this.maxLines = 1,
    this.error,
    this.focusNode,
    this.border,
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
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: const InputDecorationTheme(
          isDense: true,
          contentPadding: EdgeInsets.only(bottom: 20),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.neutral500)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
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
          hintText: widget.hintText,
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
        ),
        controller: widget.controller,
        autofocus: widget.autoFocus,
        onChanged: widget.onChanged,
        maxLines: widget.maxLines,
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
