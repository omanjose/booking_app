import 'package:booking_app/Utils/app_layout.dart';
import 'package:booking_app/Utils/app_styles.dart';
import 'package:booking_app/Widgets/column_layout.dart';
import 'package:booking_app/Widgets/layout_builder_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Styles.bgColor,
          body: ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(25),
                vertical: AppLayout.getHeight(15)),
            children: [
              SizedBox(
                height: AppLayout.getHeight(20),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: AppLayout.getHeight(86),
                    width: AppLayout.getWidth(86),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                            image: AssetImage("Assets/temp_icon.gif"))),
                  ),
                  SizedBox(
                    width: AppLayout.getHeight(10),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Book Tickets",
                        style: Styles.headLineStyle,
                      ),
                      // SizedBox(height: AppLayout.getHeight(2)),
                      Text(
                        "New York",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade500),
                      ),
                      SizedBox(height: AppLayout.getHeight(2)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getHeight(3),
                            vertical: AppLayout.getHeight(3)),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(108)),
                            color: const Color(0xfffef4f3)),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(AppLayout.getHeight(2)),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff526799),
                              ),
                              child: const Icon(
                                Icons.shield_rounded,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                            SizedBox(width: AppLayout.getHeight(5)),
                            const Text(
                              "Premium status",
                              style: TextStyle(
                                  color: Color(0xff526799),
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: AppLayout.getHeight(3)),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Edit",
                          style: Styles.textStyle
                              .copyWith(fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: AppLayout.getHeight(8)),
              Divider(color: Colors.grey.shade300),
              Stack(
                children: [
                  Container(
                    height: AppLayout.getHeight(90),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18))),
                  ),
                  Positioned(
                    right: -35,
                    top: -35,
                    child: Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(30)),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: const Color(0xff264cd2)),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(37),
                        vertical: AppLayout.getHeight(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.lightbulb_outlined,
                            color: Styles.primaryColor,
                            size: 27,
                          ),
                        ),
                        SizedBox(width: AppLayout.getHeight(12)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "You've got a new award",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22.5,
                                  color: Colors.white),
                            ),
                            Text(
                              "You have 95 flights in a year",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.9)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: AppLayout.getHeight(25)),
              Text(
                "Accumulated miles",
                style: Styles.headLineStyle2,
              ),
              SizedBox(height: AppLayout.getHeight(15)),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(25)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                  color: Styles.bgColor,
                ),
                child: Column(
                  children: [
                    Text(
                      "192802",
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                          color: Styles.textColor),
                    ),
                    SizedBox(height: AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Miles accrued",
                          style: Styles.headLineStyle4.copyWith(fontSize: 16),
                        ),
                        Text("05 April 2024",
                            style:
                                Styles.headLineStyle4.copyWith(fontSize: 16)),
                      ],
                    ),
                    Divider(color: Colors.grey.shade300),
                    SizedBox(height: AppLayout.getHeight(20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          upperText: "23 042",
                          lowerText: "Miles",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          upperText: "Airline CO",
                          lowerText: "Received from",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    SizedBox(height: AppLayout.getHeight(20)),
                    const AppLayoutBuilderWidget(sections: 12, isColor: false),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          upperText: "24",
                          lowerText: "Miles",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          upperText: "Macdonald's",
                          lowerText: "Received from",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    const AppLayoutBuilderWidget(sections: 12, isColor: false),
                    SizedBox(height: AppLayout.getHeight(20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          upperText: "52 340",
                          lowerText: "Miles",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          upperText: "Exuma",
                          lowerText: "Received from",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const AppLayoutBuilderWidget(sections: 12, isColor: false),
              SizedBox(height: AppLayout.getHeight(20)),
              InkWell(
                onTap: () {},
                child: Text(
                  "How to get more miles",
                  style: Styles.headLineStyle4.copyWith(
                      fontSize: 16,
                      color: Styles.primaryColor,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )),
    );
  }
}
