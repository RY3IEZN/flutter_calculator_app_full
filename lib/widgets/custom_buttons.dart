import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key, this.color, this.textColor, required this.buttonText})
      : super(key: key);

  final color;
  final textColor;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                    color: textColor,
                    fontSize: 19,
                    fontWeight: FontWeight.w700),
              ),
            ),
          )),
    );
  }
}
