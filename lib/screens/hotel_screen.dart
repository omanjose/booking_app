import 'package:booking_app/Utils/app_layout.dart';
import 'package:booking_app/Utils/app_styles.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    // print("Hotel price is ${hotel['price']} ");
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.only(
          right: AppLayout.getWidth(15), top: AppLayout.getHeight(5)),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      height: AppLayout.getHeight(330),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.blueGrey.shade400, blurRadius: 5, spreadRadius: 3)
          ],
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("Assets/${hotel['image']}"),
              ),
            ),
          ),
          SizedBox(height: AppLayout.getHeight(3)),
          Text(
            "${hotel['place']}",
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Text(
            "${hotel['destination']}",
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          SizedBox(
            height: AppLayout.getHeight(8),
          ),
          Text(
            "\$${hotel['price']}/night",
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
