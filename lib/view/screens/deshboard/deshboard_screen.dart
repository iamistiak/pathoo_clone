import 'package:flutter/material.dart';
import 'package:lakshmipur_high_school/utill/color_resources.dart';
import 'package:lakshmipur_high_school/view/screens/history/history_screen.dart';
import 'package:lakshmipur_high_school/view/screens/home/home_screen.dart';
import 'package:lakshmipur_high_school/view/screens/inbox/inbox_screen.dart';
import 'package:lakshmipur_high_school/view/screens/moresetting/more_setting_screen.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    InboxScreen(),
    HistoryScreen(),
    MoreSettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Stack(
        children: <Widget>[
          BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.inbox_sharp),label: "Inbox"),
                BottomNavigationBarItem(icon: Icon(Icons.history_sharp),label: "History"),
                BottomNavigationBarItem(icon: Icon(Icons.settings),label: "More"),
              ],
            currentIndex: _selectedIndex,
            selectedItemColor: ColorResources.RED_COLOR,
            unselectedItemColor: ColorResources.COLOR_GREY,
            backgroundColor: ColorResources.COLOR_WHITE,
            type: BottomNavigationBarType.fixed,
            onTap: (index){
                setState(() {
                  _selectedIndex =index;
                });
            },
          ),
        ],
      ),
    );
  }
}

