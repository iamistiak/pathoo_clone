import 'package:flutter/material.dart';
import 'package:lakshmipur_high_school/provider/restaurant_provider.dart';
import 'package:lakshmipur_high_school/utill/dimensions.dart';
import 'package:provider/provider.dart';

class RestaurantView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<RestaurantProvider>(context).initRestaurantList();
    return Consumer<RestaurantProvider>(
      builder: (context, restaurantProvider, child) {
        return restaurantProvider.restaurantList.length != 0
            ? SizedBox(
                height: 220,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: restaurantProvider.restaurantList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 300,
                      margin: EdgeInsets.only(
                          right: Dimensions.PADDING_SIZE_DEFAULT, bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[200],
                              blurRadius: 5,
                              spreadRadius: 1,
                            )
                          ]),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(10)),
                                  child: FadeInImage.assetNetwork(
                                    placeholder: restaurantProvider.restaurantList[index].image,
                                    image: restaurantProvider.restaurantList[index].image,
                                    height: 120,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 7,
                                  left: 0,
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(2)),
                                      color: Colors.green,
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.all(3),
                                        child: Text(
                                          restaurantProvider.restaurantList[index].discount,
                                          style: TextStyle(
                                              fontSize:
                                                  Dimensions.FONT_SIZE_SMALL,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Dimensions.PADDING_SIZE_SMALL),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        restaurantProvider.restaurantList[index].name,
                                        style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE, fontWeight: FontWeight.bold),),
                                      SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                                      // ignore: deprecated_member_use
                                      Text(
                                        restaurantProvider.restaurantList[index].foodName,style: TextStyle(
                                        color: Colors.grey[700]
                                      ),
                                      ),
                                      SizedBox(height: 5,),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orangeAccent,
                                            size: 15,
                                          ),
                                          Text(restaurantProvider.restaurantList[index].ratting),
                                          Text("(500+ Ratting)",style: TextStyle(color: Colors.grey[500]),),
                                          SizedBox(
                                              height: Dimensions
                                                  .PADDING_SIZE_EXTRA_SMALL),
                                          Expanded(child: SizedBox.shrink()),
                                          Text("Delivery ৳"+restaurantProvider.restaurantList[index].deliveryCharge,style: TextStyle(
                                            color: Colors.grey[500],
                                          ),),
                                        ],
                                      ),
                                    ]),
                              ),
                            ),
                          ]),
                    );
                  },
                ),
              )
            : Center(child: CircularProgressIndicator());
      },
    );
  }
}
