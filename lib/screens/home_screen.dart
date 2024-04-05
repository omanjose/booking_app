import 'package:booking_app/Utils/app_info_list.dart';
import 'package:booking_app/Widgets/view_all.dart';
import 'package:booking_app/screens/hotel_screen.dart';
import 'package:booking_app/screens/ticket_view.dart';
import 'package:flutter/material.dart';

import '../Utils/app_layout.dart';
import '../Utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      // backgroundColor: const Color(0xffeeedf2),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: AppLayout.getHeight(40)),
                          Text(
                            "Good morning!",
                            style: Styles.headLineStyle3,
                          ),
                          SizedBox(height: AppLayout.getHeight(2)),
                          Text(
                            "Book Tickets",
                            style: Styles.headLineStyle,
                          ),
                          SizedBox(height: AppLayout.getHeight(10)),
                        ],
                      ),
                      Container(
                        height: AppLayout.getHeight(60),
                        width: AppLayout.getWidth(60),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(10)),
                            image: const DecorationImage(
                                image: AssetImage("Assets/temp_icon.gif"))),
                      ),
                    ],
                  ),
                  SizedBox(height: AppLayout.getHeight(5)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10)),
                      color: const Color(0xfff4f6fd),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search_sharp,
                          color: Color(0xffbfc205),
                        ),
                        Text(
                          "Search",
                          style: Styles.headLineStyle4,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: AppLayout.getHeight(15)),
              const ViewAllTextWidget(
                  bigText: "Upcoming Flights", smallText: "view all"),

              SizedBox(height: AppLayout.getHeight(5)),
              //Ticket view pane
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(right: AppLayout.getWidth(10)),
                child: Row(
                    children: ticketList
                        .map((e) => TicketView(
                              ticket: e,
                            ))
                        .toList()),
              ),
              SizedBox(height: AppLayout.getHeight(12)),
              //Hotels banner
              const ViewAllTextWidget(bigText: "Hotels", smallText: "view all"),
              // const SizedBox(height: 5),
              /*
              Hotel Screen
              */
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children:
                        hotelList.map((e) => HotelScreen(hotel: e)).toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
