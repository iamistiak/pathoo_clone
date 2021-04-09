import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lakshmipur_high_school/provider/category_provider.dart';
import 'package:lakshmipur_high_school/utill/dimensions.dart';
import 'package:provider/provider.dart';

class CategoryView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Provider.of<CategoryProvider>(context,listen: false).initCategoryList();
    return Consumer<CategoryProvider>(
        builder: (context, categoryProvider,child){
          return categoryProvider.categoryList.length != 0 ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 25,
                mainAxisSpacing: 25,
                childAspectRatio: (1/1),
              ),
              itemCount: categoryProvider.categoryList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
             itemBuilder: (context,index)=>Container(
              alignment: Alignment.center,
              //padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
               // border: Border.all(width: 1,),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 5,
                   // blurRadius: 1,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [

                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_LARGE, vertical: Dimensions.PADDING_SIZE_SMALL),
                    child: Image.asset(
                      categoryProvider.categoryList[index].icon,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Expanded(flex: 3, child: Container(
                  decoration: BoxDecoration(
                    //color: ColorResources.getTextBg(context),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                  ),
                  child: Center(
                    child: Text( categoryProvider.categoryList[index].name ,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
                    ),
                  ),
                )),

              ]),
              ),
            )
              : Center(child: CircularProgressIndicator());
        },
    );
  }
}
