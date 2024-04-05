import 'package:booking_app/Utils/app_layout.dart';
import 'package:booking_app/Utils/app_styles.dart';
import 'package:booking_app/Widgets/icon_text_widget.dart';
import 'package:booking_app/Widgets/ticket_tabs.dart';
import 'package:booking_app/Widgets/view_all.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            SizedBox(height: AppLayout.getHeight(40)),
            Text(
              "What are\nyou looking for?",
              style: Styles.headLineStyle
                  .copyWith(fontSize: AppLayout.getHeight(35)),
            ),
            SizedBox(
              height: AppLayout.getHeight(20),
            ),
            const TicketTabs(
                firstText: "Airline tickets", secondText: "Hotels"),
            SizedBox(
              height: AppLayout.getHeight(25),
            ),
            const AppIconText(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            SizedBox(
              height: AppLayout.getHeight(15),
            ),
            const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
            SizedBox(
              height: AppLayout.getHeight(15),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                color: const Color(0xd91130ce),
              ),
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getWidth(12),
                  horizontal: AppLayout.getHeight(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "find tickets",
                    style: Styles.textStyle.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppLayout.getHeight(25),
            ),
            const ViewAllTextWidget(
                bigText: "Upcoming flights", smallText: "view all"),
            SizedBox(
              height: AppLayout.getHeight(15),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppLayout.getHeight(400),
                  width: size.width * 0.42,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(15),
                      vertical: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                              image: AssetImage("Assets/board.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(height: AppLayout.getHeight(3)),
                      Text(
                        "20% discount on early booking of this flight, Don't miss this chance",
                        style: Styles.headLineStyle.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(200),
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(15),
                              horizontal: AppLayout.getWidth(15)),
                          decoration: BoxDecoration(
                              color: const Color(0xff3ab8b8),
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(18))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headLineStyle2
                                    .copyWith(color: Colors.white),
                              ),
                              SizedBox(
                                height: AppLayout.getHeight(8),
                              ),
                              Text(
                                "Take the survey about our services and get discount",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -30,
                          top: -15,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 10, color: const Color(0xff189999)),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(15),
                    ),
                    Container(
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(210),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(15),
                          vertical: AppLayout.getHeight(15)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                          color: const Color(0xffec6545)),
                      child: Column(
                        children: [
                          Text(
                            'Take love',
                            style: Styles.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(15),
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                    text: 'j', style: TextStyle(fontSize: 38)),
                                TextSpan(
                                    text: 'j', style: TextStyle(fontSize: 58)),
                                TextSpan(
                                    text: 'j', style: TextStyle(fontSize: 38)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
