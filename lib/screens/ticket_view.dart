import 'package:booking_app/Utils/app_layout.dart';
import 'package:booking_app/Utils/app_styles.dart';
import 'package:booking_app/Widgets/column_layout.dart';
import 'package:booking_app/Widgets/layout_builder_widget.dart';
import 'package:booking_app/Widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 160 : 161),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xff526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /*
                  Showing upper side of the ticket 
                  */

                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      // const Spacer(), does similar thing, but let's use Expanded widget below
                      Expanded(child: Container()),
                      const ThickContainer(isColor: true), //first circle design
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: AppLayoutBuilderWidget(sections: 6)),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : const Color(0xff8accf7)),
                            ),
                          )
                        ],
                      )),
                      const ThickContainer(
                          isColor: true), //Second circle design
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  SizedBox(height: AppLayout.getHeight(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            /*
            Showing lower side of the ticket
            The supposed orange color part
            */
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  /*
                  First small dot on the sideof the ticket
                  */
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade300
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppLayout.getHeight(10)),
                            bottomRight:
                                Radius.circular(AppLayout.getHeight(10))),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(6)),
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                          (constraints.constrainWidth() / 10).floor(),
                          (index) => SizedBox(
                            height: AppLayout.getHeight(1),
                            width: AppLayout.getWidth(4),
                            child: const DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  )),
                  /*
                  Second Side dots colored black
                  */
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade300
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10)),
                            bottomLeft:
                                Radius.circular(AppLayout.getHeight(10))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                      isColor == null ? AppLayout.getHeight(21) : 0),
                  bottomRight: Radius.circular(
                      isColor == null ? AppLayout.getHeight(21) : 0),
                ),
                color: isColor == null ? Styles.orangeColor : Colors.white,
              ),
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          upperText: ticket['date'].toString(),
                          lowerText: "DATE",
                          isColor: isColor,
                          alignment: CrossAxisAlignment.start),
                      AppColumnLayout(
                          upperText: ticket['departure_time'],
                          lowerText: "Departure time",
                          isColor: isColor,
                          alignment: CrossAxisAlignment.center),
                      AppColumnLayout(
                          upperText: ticket['number'].toString(),
                          lowerText: "Number",
                          isColor: isColor,
                          alignment: CrossAxisAlignment.end),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
