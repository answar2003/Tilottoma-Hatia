import 'package:flutter/material.dart';

Widget CustomTextField({
  String? hintMain,
  String? hintSub,
  String? labelHint,
  required Image? prefixIcon,
  required dynamic colorM,
  required dynamic colorS,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 5),
    child: Stack(
      alignment: Alignment.centerLeft,
      children: [
        TextField(
          decoration: InputDecoration(
            prefixIcon: prefixIcon ?? Spacer(),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(12),
            ),
            labelText: labelHint,
            labelStyle: TextStyle(color: Colors.white, fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.white,
        ),
        if (hintMain != null || hintSub != null)
          Positioned(
            left: 50,
            top: 14,
            child: RichText(
              text: TextSpan(
                children: [
                  if (hintMain != null)
                    TextSpan(
                      text: "$hintMain\n",
                      style: TextStyle(
                        fontSize: 20, // Bigger size
                        fontWeight: FontWeight.bold,
                        color: colorM ?? Colors.blue,
                      ),
                    ),
                  if (hintSub != null)
                    TextSpan(
                      text: hintSub,
                      style: TextStyle(
                        fontSize: 13, // Smaller size

                        color: colorS ?? Colors.white70,
                      ),
                    ),
                ],
              ),
            ),
          ),
      ],
    ),
  );
}
