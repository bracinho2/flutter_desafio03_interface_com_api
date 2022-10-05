import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const CustomTextField({
    Key? key,
    required this.text,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
