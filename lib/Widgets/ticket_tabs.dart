import 'package:booking_app/Utils/app_layout.dart';
import 'package:flutter/material.dart';

class TicketTabs extends StatelessWidget {
  final String firstText;
  final String secondText;
  const TicketTabs(
      {super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(50),
          ),
          color: const Color(0xfff4f6fd),
        ),
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            /*
                  Airline tickets
                  */
            Container(
              width: size.width * .50,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(25)),
                  ),
                  color: Colors.white),
              child: Center(child: Text(firstText)),
            ),
            /*
                  Hotels
                  */
            Container(
              width: size.width * .50,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeight(25)),
                  ),
                  color: Colors.grey.shade200),
              child: Center(child: Text(secondText)),
            ),
          ],
        ),
      ),
    );
  }
}
