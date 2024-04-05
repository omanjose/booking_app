import 'package:booking_app/Utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const AppLayoutBuilderWidget(
      {super.key, required this.sections, this.width = 3, this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        // print(
        //     "The width of this screen is ${constraints.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              width: AppLayout.getWidth(width),
              height: AppLayout.getHeight(1),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color:
                        isColor == null ? Colors.grey.shade300 : Colors.white),
              ),
            ),
          ),
        );
      }),
    );
  }
}
