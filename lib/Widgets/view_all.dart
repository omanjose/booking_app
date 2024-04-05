import 'package:flutter/material.dart';

import '../Utils/app_styles.dart';

class ViewAllTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const ViewAllTextWidget(
      {super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            // print("You're tapped");
          },
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
