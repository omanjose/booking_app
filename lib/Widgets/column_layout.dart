import 'package:booking_app/Utils/app_layout.dart';
import 'package:booking_app/Utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppColumnLayout extends StatelessWidget {
  final String upperText;
  final String lowerText;
  final bool? isColor;
  final CrossAxisAlignment alignment;
  const AppColumnLayout({
    super.key,
    required this.upperText,
    required this.lowerText,
    required this.alignment,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          upperText,
          style: isColor == null
              ? Styles.headLineStyle3.copyWith(color: Colors.white)
              : Styles.headLineStyle3,
        ),
        SizedBox(
          height: AppLayout.getHeight(5),
        ),
        Text(
          lowerText,
          style: isColor == null
              ? Styles.headLineStyle4.copyWith(color: Colors.white)
              : Styles.headLineStyle4,
        ),
      ],
    );
  }
}
