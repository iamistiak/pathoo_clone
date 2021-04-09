import 'package:flutter/material.dart';
import 'package:lakshmipur_high_school/utill/color_resources.dart';
import 'package:lakshmipur_high_school/utill/dimensions.dart';
import 'package:lakshmipur_high_school/utill/images.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Images.history),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lets Place your first order",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "It seems we don't have any history together.lets make some",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE,color: ColorResources.COLOR_GREY),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                  width: MediaQuery.of(context).size.width / 3.5,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: ColorResources.RED_COLOR,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7))),
                      onPressed: () {},
                      child: Text(
                        "LET'S ORDER",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
