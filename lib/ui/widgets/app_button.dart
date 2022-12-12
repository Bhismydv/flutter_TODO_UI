import 'package:flutter/material.dart';
import 'package:flutter_todo_ui/styles/app_colors.dart';

class AppButton extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final bool fitWidth;
  final double? width;
  final Color? bagColor, txtColor;

   AppButton({required this.width, required this.label, required this.onPressed,
     required this.txtColor, required this.bagColor, required this.fitWidth});

  @override
  Widget build(BuildContext context) {

    return TextButton(
        onPressed: onPressed,
        child: Container(
      color: Colors.black,

          width: width ?? (fitWidth ? double.infinity : null),
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: txtColor ?? Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
    ));
  }
}
