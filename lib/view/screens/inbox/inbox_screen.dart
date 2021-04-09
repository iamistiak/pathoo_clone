import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lakshmipur_high_school/utill/color_resources.dart';
import 'package:lakshmipur_high_school/view/screens/inbox/widget/campaigns.dart';
import 'package:lakshmipur_high_school/view/screens/inbox/widget/notification.dart';

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: TabBar(
              indicatorColor: ColorResources.RED_COLOR,
              labelColor: ColorResources.RED_COLOR,
              unselectedLabelColor: ColorResources.COLOR_GREY,
              tabs: [
                Tab(child: Text("CAMPAIGNS"),),
                Tab(child: Text("NOTIFICATIONS"),),
              ],
            ),
            body: TabBarView(
              children: [
                  CampaignScreen(fromHome: false),
                  NotificationScreen(),
              ],
            ),

          ),
        ));
  }
}
