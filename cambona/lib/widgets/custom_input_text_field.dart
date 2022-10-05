import 'package:cambona/cambona.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomInputTextField extends StatelessWidget {
  void Function(String)? onChanged;
  CustomInputTextField({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      style: lightTheme.textTheme.labelSmall,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.only(
          left: 20,
          bottom: 10,
          top: 30,
        ),
        isDense: true,
        labelText: 'Ciudad',
        labelStyle: TextStyle(
          fontSize: 20,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
