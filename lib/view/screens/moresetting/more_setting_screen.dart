import 'package:flutter/material.dart';
import 'package:lakshmipur_high_school/utill/color_resources.dart';
import 'package:lakshmipur_high_school/utill/dimensions.dart';
import 'package:lakshmipur_high_school/utill/images.dart';

class MoreSettingScreen extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.COLOR_WHITE,
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  //
                  Container(
                    height: 100,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding : EdgeInsets.all(10),
                          child: Container(
                            width: 60,
                            height: 60,
                            child: Stack(
                              children: [
                                Image.asset(
                                  Images.user_picture,
                                  fit: BoxFit.fill,
                                  width: 95,
                                  height: 95,
                                ),
                                Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: CircleAvatar(
                                      backgroundColor: ColorResources.COLOR_PRIMARY,
                                      radius: 13,
                                      child: Icon(
                                        Icons.add,
                                        color: ColorResources.COLOR_WHITE,
                                        size: 15,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.PADDING_SIZE_DEFAULT,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Istiak Ahammed",
                              style: TextStyle(fontSize: 17),
                            ),
                            Text("01979159940",
                              style: TextStyle(color: ColorResources.COLOR_GREY, fontSize: Dimensions.FONT_SIZE_DEFAULT),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  //Account
                  Container(
                    height: 260,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding:EdgeInsets.only(left: 15,top: 15), child: Text("ACCOUNT",style: TextStyle(color: ColorResources.COLOR_GREY,fontSize: Dimensions.FONT_SIZE_SMALL),)),
                        InkWell(
                          onTap: (){},
                          child: ListTile(
                            leading: Icon(Icons.supervised_user_circle),
                            title: Text("Profile",style: TextStyle(fontSize: Dimensions.FONT_SIZE_DEFAULT),),
                          ),
                        ),
                        Divider(height: 1,color: Colors.grey[300],indent: MediaQuery.of(context).size.width/25,endIndent: MediaQuery.of(context).size.width/25,),
                        ListTile(
                          leading: Icon(Icons.business_center),
                          title: Text("Business Profile",style: TextStyle(fontSize: Dimensions.FONT_SIZE_DEFAULT),),
                        ),
                        Divider(height: 1,color: Colors.grey[300],indent: MediaQuery.of(context).size.width/25,endIndent: MediaQuery.of(context).size.width/25,),
                        ListTile(
                          leading: Icon(Icons.payment),
                          title: Text("Digital Payment",style: TextStyle(fontSize: Dimensions.FONT_SIZE_DEFAULT),),
                        ),
                        Divider(height: 1,color: Colors.grey[300],indent: MediaQuery.of(context).size.width/25,endIndent: MediaQuery.of(context).size.width/25,),
                        ListTile(
                          leading: Icon(Icons.star),
                          title: Text("Save Address",style: TextStyle(fontSize: Dimensions.FONT_SIZE_DEFAULT),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  //Offer
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding:EdgeInsets.only(left: 15,top: 15), child: Text("OFFERS",style: TextStyle(color: ColorResources.COLOR_GREY,fontSize: Dimensions.FONT_SIZE_SMALL),)),
                        ListTile(
                          leading: Icon(Icons.campaign),
                          title: Text("Promotions",style: TextStyle(fontSize: Dimensions.FONT_SIZE_DEFAULT),),
                        ),
                        Divider(height: 1,color: Colors.grey[300],indent: MediaQuery.of(context).size.width/25,endIndent: MediaQuery.of(context).size.width/25,),
                        ListTile(
                          leading: Icon(Icons.payments_outlined),
                          title: Text("Get Discounts",style: TextStyle(fontSize: Dimensions.FONT_SIZE_DEFAULT),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  //Setting
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding:EdgeInsets.only(left: 15,top: 15), child: Text("Setting",style: TextStyle(color: ColorResources.COLOR_GREY,fontSize: Dimensions.FONT_SIZE_SMALL),)),
                        ListTile(
                          leading: Icon(Icons.language),
                          title: Text("Promotions",style: TextStyle(fontSize: Dimensions.FONT_SIZE_DEFAULT),),
                        ),
                        Divider(height: 1,color: Colors.grey[300],indent: MediaQuery.of(context).size.width/25,endIndent: MediaQuery.of(context).size.width/25,),
                        ListTile(
                          leading: Icon(Icons.verified_user),
                          title: Text("Permissions",style: TextStyle(fontSize: Dimensions.FONT_SIZE_DEFAULT),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  //help & legal
                  Container(
                    height: 200,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding:EdgeInsets.only(left: 15,top: 15), child: Text("HELP & LEGAL",style: TextStyle(color: ColorResources.COLOR_GREY,fontSize: Dimensions.FONT_SIZE_SMALL),)),
                        ListTile(
                          leading: Icon(Icons.call),
                          title: Text("Emergency Support",style: TextStyle(fontSize: Dimensions.FONT_SIZE_DEFAULT),),
                        ),
                        Divider(height: 1,color: Colors.grey[300],indent: MediaQuery.of(context).size.width/25,endIndent: MediaQuery.of(context).size.width/25,),
                        ListTile(
                          leading: Icon(Icons.help_outline_outlined),
                          title: Text("Help",style: TextStyle(fontSize: Dimensions.FONT_SIZE_DEFAULT),),
                        ),
                        Divider(height: 1,color: Colors.grey[300],indent: MediaQuery.of(context).size.width/25,endIndent: MediaQuery.of(context).size.width/25,),
                        ListTile(
                          leading: Icon(Icons.find_in_page_outlined),
                          title: Text("Policies",style: TextStyle(fontSize: Dimensions.FONT_SIZE_DEFAULT),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  //Logout
                  Container(
                    height: 60,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Icon(Icons.login_rounded),
                          title: Text("Log Out",style: TextStyle(fontSize: Dimensions.FONT_SIZE_DEFAULT),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Version 7.2.2",style: TextStyle(fontSize: 14,color: ColorResources.COLOR_GREY,),),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
