import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  final double size;
  const VerticalSpace(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}

class HorizontalSpace extends StatelessWidget {
  final double size;
  const HorizontalSpace(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size);
  }
}
