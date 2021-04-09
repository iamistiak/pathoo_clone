import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lakshmipur_high_school/utill/color_resources.dart';
import 'package:lakshmipur_high_school/utill/dimensions.dart';
import 'package:lakshmipur_high_school/utill/images.dart';
import 'package:lakshmipur_high_school/view/screens/category/category_view.dart';
import 'package:lakshmipur_high_school/view/screens/home/widgets/banner_view.dart';
import 'package:lakshmipur_high_school/view/screens/home/widgets/restaurant_view.dart';
import 'package:lakshmipur_high_school/view/screens/inbox/widget/campaigns.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            //Appbar
           /* SliverAppBar(
              floating: true,
              elevation: 0,
              centerTitle: false,
              automaticallyImplyLeading: false,
              backgroundColor: Theme.of(context).accentColor,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(Images.pathoo_logo, width: 100, height: 100),
                ],
              ),
              actions: [
                IconButton(
                  //onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => NotificationScreen())),
                  icon: Icon(Icons.notifications, color: Theme.of(context).textTheme.bodyText1.color),
                ),
              ],
            ),*/
            //Header
            // todo : header work
            SliverPersistentHeader(pinned: true, delegate: SliverDelegate(child: AppBar(
              elevation: 0,
              //automaticallyImplyLeading: false,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(Images.pathoo_logo, width: 100, height: 100),
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications, color: Theme.of(context).textTheme.bodyText1.color),
                ),
              ],
            ),)),
            SliverToBoxAdapter(child: Column(
              children: [

                //Get Discount
                Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorResources.COLOR_WHITE,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  //  padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_DEFAULT),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_DEFAULT),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on,color: Colors.grey[500],size: 15,),
                            Text(" 6/6, Kallyanpur Main Road, Mukti Housing, Kallyanpur",style: TextStyle(color: Colors.grey[500],fontSize: 12),),
                            Expanded(child: SizedBox.shrink()),
                            Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey[500],size: 15,),
                          ],
                        ),
                        Divider(height: 15,),

                      ],
                    ),
                  ),

                ),

                //Category
                Container(
                  color: Colors.grey[200],
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_LARGE),
                    child: CategoryView(),
                  ),
                ),

                //Whats New
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorResources.COLOR_WHITE,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_DEFAULT),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 10), child: Text("What's New",style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE,fontWeight: FontWeight.bold),)),
                      SizedBox(
                        height: 35,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            TextButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(width: 1, color: Colors.grey[500])),
                                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: Dimensions.PADDING_SIZE_DEFAULT)),
                              ),
                              child: Text("All",style: TextStyle(color: Colors.grey[700]),),
                            ),
                            SizedBox(width: 10,),
                            TextButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(BorderSide(width: 1, color: Colors.grey[500])),
                                textStyle: MaterialStateProperty.all(TextStyle(fontSize: Dimensions.PADDING_SIZE_DEFAULT)),
                              ),
                              child: Text("Trending",style: TextStyle(color: Colors.grey[700]),),
                            ),
                            SizedBox(width: 10,),
                            TextButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(BorderSide(width: 1, color: Colors.grey[500])),
                                textStyle: MaterialStateProperty.all(TextStyle(fontSize: Dimensions.PADDING_SIZE_DEFAULT)),
                              ),
                              child: Text("Live TV",style: TextStyle(color: Colors.grey[700]),),
                            ),
                            SizedBox(width: 10,),
                            TextButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(BorderSide(width: 1, color: Colors.grey[500])),
                                textStyle: MaterialStateProperty.all(TextStyle(fontSize: Dimensions.PADDING_SIZE_DEFAULT)),
                              ),
                              child: Text("Food",style: TextStyle(color: Colors.grey[700]),),
                            ),
                            SizedBox(width: 10,),
                            TextButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(BorderSide(width: 1, color: Colors.grey[500])),
                                textStyle: MaterialStateProperty.all(TextStyle(fontSize: Dimensions.PADDING_SIZE_DEFAULT)),
                              ),
                              child: Text("Car",style: TextStyle(color: Colors.grey[700]),),
                            ),
                            SizedBox(width: 10,),
                            TextButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(BorderSide(width: 1, color: Colors.grey[500])),
                                textStyle: MaterialStateProperty.all(TextStyle(fontSize: Dimensions.PADDING_SIZE_DEFAULT)),
                              ),
                              child: Text("Hire",style: TextStyle(color: Colors.grey[700]),),
                            ),
                            SizedBox(width: 10,),
                            TextButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(BorderSide(width: 1, color: Colors.grey[500])),
                                textStyle: MaterialStateProperty.all(TextStyle(fontSize: Dimensions.PADDING_SIZE_DEFAULT)),
                              ),
                              child: Text("Tong",style: TextStyle(color: Colors.grey[700]),),
                            ),
                            SizedBox(width: 10,),
                            TextButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(BorderSide(width: 1, color: Colors.grey[500])),
                                textStyle: MaterialStateProperty.all(TextStyle(fontSize: Dimensions.PADDING_SIZE_DEFAULT)),
                              ),
                              child: Text("Shop",style: TextStyle(color: Colors.grey[700]),),
                            ),
                          ],
                        ),
                      ),
                      //banner View
                      Padding(
                        padding: EdgeInsets.only(top: Dimensions.PADDING_SIZE_LARGE),
                        child: BannersView(),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 10,),

                //where would you like to go
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorResources.COLOR_WHITE,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_DEFAULT),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 10), child: Text("Where would you like to go?",style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE,fontWeight: FontWeight.bold),)),
                     //home and work address
                      Container(
                        width: MediaQuery.of(context).size.width/1,
                        height: 60,
                        padding:  EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[500]),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(10), child: Icon(Icons.home,color: Colors.grey[500],)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Home"),
                                    Text("Set home address",style: TextStyle(color: Colors.grey[500]),),
                                  ],
                                ),
                              ],
                            ),
                            VerticalDivider(width: 50,color: Colors.grey[500],thickness: 1,),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(right: 10), child: Icon(Icons.work_outlined,color: Colors.grey[500],)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Work"),
                                    Text("Set work address",style: TextStyle(color: Colors.grey[500]),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Search for Different destination
                      SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.only(right: 10),child: Icon(Icons.search,color: Colors.grey[500],)),
                            Text("Search for different destination",style: TextStyle(color: Colors.grey[500]),),
                            Expanded(child: SizedBox.shrink()),
                            Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey[500],),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                //Feature Restaurants
                Container(
                  height: 270,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorResources.COLOR_WHITE,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_DEFAULT),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Padding(padding: EdgeInsets.symmetric(vertical: 10), child: Text("Featured Restaurants",style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE,fontWeight: FontWeight.bold),)),
                        Expanded(child: SizedBox.shrink()),
                        Text("See All",style: TextStyle(color: Colors.grey[500]),),
                        Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey[500],size: 15,),
                      ],),
                       RestaurantView(),

                    ],
                  ),
                ),
                SizedBox(height: 10,),

                //Get Discount
                Container(
                  height: 1250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorResources.COLOR_WHITE,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                //  padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_DEFAULT),
                  child: CampaignScreen(fromHome: true,),

                ),
                SizedBox(height: 10,),
              ],
            ),)
          ],
        ),
      ),
    );
  }
}

class SliverDelegate extends SliverPersistentHeaderDelegate {

  Widget child;
  SliverDelegate({@required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverDelegate oldDelegate) {
    return oldDelegate.maxExtent != 50 || oldDelegate.minExtent != 50 || child != oldDelegate.child;
  }

}