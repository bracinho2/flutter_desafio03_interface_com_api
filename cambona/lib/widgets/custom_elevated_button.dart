import 'package:cambona/themes/themes.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String label;
  const CustomElevatedButton({
    Key? key,
    this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: lightTheme.elevatedButtonTheme.style,
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
