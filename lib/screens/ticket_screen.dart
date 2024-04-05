import 'package:barcode_widget/barcode_widget.dart';
import 'package:booking_app/Utils/app_info_list.dart';
import 'package:booking_app/Utils/app_layout.dart';
import 'package:booking_app/Utils/app_styles.dart';
import 'package:booking_app/Widgets/ticket_tabs.dart';
import 'package:booking_app/screens/ticket_view.dart';
import 'package:flutter/material.dart';

import '../Widgets/column_layout.dart';
import '../Widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                  vertical: AppLayout.getHeight(15)),
              children: [
                SizedBox(height: AppLayout.getHeight(40)),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle,
                ),
                SizedBox(height: AppLayout.getHeight(20)),
                const TicketTabs(firstText: "Upcoming", secondText: "Previous"),
                SizedBox(height: AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
                const SizedBox(height: 1),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                          bottomRight:
                              Radius.circular(AppLayout.getHeight(21)))),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            upperText: 'Flutter DB',
                            lowerText: 'Passenger',
                            isColor: false,
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnLayout(
                            upperText: '5221 345678',
                            lowerText: 'passport',
                            isColor: false,
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppLayout.getHeight(20),
                      ),
                      const AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            upperText: '2546567375i898880986889',
                            lowerText: 'Number of E-ticket',
                            isColor: false,
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnLayout(
                            upperText: '34098',
                            lowerText: 'Booking code',
                            isColor: false,
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppLayout.getHeight(20),
                      ),
                      const AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                      /*
                      Visa card payment
                       */
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "Assets/visa.png",
                                    scale: 6,
                                  ),
                                  Text(
                                    " *** 24482",
                                    style: Styles.headLineStyle3,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Payment method",
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                          const AppColumnLayout(
                              upperText: "\$2.99",
                              lowerText: "Price",
                              isColor: false,
                              alignment: CrossAxisAlignment.end),
                        ],
                      ),
                      const SizedBox(height: 3),
                      SizedBox(
                        height: AppLayout.getHeight(20),
                      ),

                      /*
                      Barcode
                      */
                      const SizedBox(height: 3),
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(15)),
                        child: BarcodeWidget(
                          data: "joshuaoleh@gmail.com",
                          barcode: Barcode.code128(),
                          drawText: false,
                          color: Styles.textColor,
                          width: double.infinity,
                          height: 70,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: AppLayout.getHeight(20),
                ),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                    // isColor: true,
                  ),
                )
              ],
            ),
            Positioned(
              left: AppLayout.getHeight(17),
              top: AppLayout.getHeight(315),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2),
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: AppLayout.getHeight(17),
              top: AppLayout.getHeight(315),
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2),
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
