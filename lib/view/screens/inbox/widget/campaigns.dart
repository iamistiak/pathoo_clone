import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lakshmipur_high_school/provider/campaignProvider.dart';
import 'package:lakshmipur_high_school/utill/color_resources.dart';
import 'package:lakshmipur_high_school/utill/dimensions.dart';
import 'package:provider/provider.dart';
import 'package:toast/toast.dart';
class CampaignScreen extends StatelessWidget {
  final bool fromHome;
  CampaignScreen({this.fromHome});
  @override
  Widget build(BuildContext context) {
    Provider.of<CampaignProvider>(context,listen: false).initCampaignList();
    return Consumer<CampaignProvider>(
      builder: (context,campaignProvider,child){
        if (campaignProvider.campaignList.length != 0) {
          return Scaffold(
          body: Container(
            child: ListView.builder(
              itemCount: campaignProvider.campaignList.length,
              physics: fromHome ?  NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
              itemBuilder: (context, index) => Container(
                child: Column(
                  children: [
                    Container(
                      height: 400,
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_DEFAULT),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Image.asset(campaignProvider.campaignList[index].image,height: 200,width: 200,)),
                            Text(campaignProvider.campaignList[index].campaignName,style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text(campaignProvider.campaignList[index].campaignDescription, style: TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL,color: ColorResources.COLOR_GREY),),
                          //Text Field share code
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/1.4,
                                  height: 37,
                                  padding:  EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey[500]),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Share your code: ",style: TextStyle(color: Colors.grey[500]),),
                                          Text(campaignProvider.campaignList[index].campaignCode),
                                          VerticalDivider(width: 90,color: Colors.grey[500],thickness: 1,),
                                          GestureDetector(
                                            onTap: (){
                                              Clipboard.setData(new ClipboardData(text: campaignProvider.campaignList[index].campaignCode ));
                                              Toast.show("Copy to ClipBoard", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM,backgroundColor: Colors.green,textColor: Colors.white);

                                            },
                                              child: Icon(Icons.copy,color: ColorResources.RED_COLOR,size: 20,)),
                                        ],
                                      ),


                                    ],
                                  ),
                                ),
                                Expanded(child: SizedBox.shrink()),
                                TextButton(
                                  onPressed: (){},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.red),
                                    //side: MaterialStateProperty.all(BorderSide(width: 1, color: Colors.grey[500])),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: Dimensions.PADDING_SIZE_DEFAULT,
                                    )),
                                  ),
                                  child: Text("INVITE",style: TextStyle(color: Colors.white),),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              ),


            ),
          ),

        );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },

    );
  }
}
