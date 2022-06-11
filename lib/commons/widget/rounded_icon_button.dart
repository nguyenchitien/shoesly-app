import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final Function()? onPressed;
  final Color? backgroundColor;
  final Widget icon;
  final EdgeInsets? padding;
  final double size;
  final String? tooltip;

  const RoundedIconButton({
    Key? key,
    this.onPressed,
    required this.icon,
    required this.size,
    this.backgroundColor,
    this.padding,
    this.tooltip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final content = Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ?? Colors.white,
      ),
      child: MaterialButton(
        height: 0,
        minWidth: 0,
        onPressed: onPressed,
        shape: const CircleBorder(),
        padding: EdgeInsets.zero,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Center(
          child: icon,
        ),
      ),
    );

    if (tooltip != null) {
      return Tooltip(
        message: tooltip!,
        child: content,
      );
    }

    return content;
  }
}
