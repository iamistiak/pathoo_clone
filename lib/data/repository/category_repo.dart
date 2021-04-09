import 'package:lakshmipur_high_school/data/model/response/category_model.dart';
import 'package:lakshmipur_high_school/utill/images.dart';

class CategoryRepo{
  List<CategoryModel> getCategoryList(){
    List<CategoryModel> categoryList = [
      CategoryModel(id: 1,name: "Express",icon: Images.express,),
      CategoryModel(id: 2,name: "ExpressXL ",icon: Images.express_xl,),
      CategoryModel(id: 3,name: "Food",icon: Images.food,),
      CategoryModel(id: 4,name: "Parcel",icon: Images.parcel,),
      CategoryModel(id: 5,name: "Top-Up",icon: Images.topup,),
      CategoryModel(id: 6,name: "Courier",icon: Images.courier,),
      CategoryModel(id: 7,name: "Shop",icon: Images.shop,),
      CategoryModel(id: 8,name: "Tong",icon: Images.tong,),
      CategoryModel(id: 9,name: "Pharma",icon: Images.pharma,),
      CategoryModel(id: 10,name: "Bongo",icon: Images.bongo,),
      CategoryModel(id: 11,name: "Games",icon: Images.games,),
      CategoryModel(id: 11,name: "Health",icon: Images.health,),

    ];
    return categoryList;
  }
}