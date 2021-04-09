import 'package:flutter/material.dart';
import 'package:lakshmipur_high_school/utill/color_resources.dart';
import 'package:lakshmipur_high_school/utill/dimensions.dart';
import 'package:lakshmipur_high_school/utill/images.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.notification_image),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Notification will appear here",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "We will notify when something new and interesting is happening",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE,color: ColorResources.COLOR_GREY),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
