import 'package:lakshmipur_high_school/data/model/response/restaurant_model.dart';
import 'package:lakshmipur_high_school/utill/images.dart';

class RestaurantRepo{
  List<RestaurantModel> getRestaurantList(){
    List<RestaurantModel> restaurantList = [
      RestaurantModel(id: 1,image: Images.restaurant_one,name: "Burger Restaurant",foodName: "Burger-Fast Food-Chinese- Drinks And Beverage",discount: "10% OFF",ratting: "4.2",deliveryCharge: "60"),
      RestaurantModel(id: 2,image: Images.restaurant_two,name: "88 STREET",foodName: "Burger-Fast Food-Chinese- Drinks And Beverage",discount: "20% OFF",ratting: "4.3",deliveryCharge: "50"),
      RestaurantModel(id: 2,image: Images.restaurant_three,name: "Pizza Inn",foodName: "Burger-Fast Food-Chinese- Drinks And Beverage",discount: "10% OFF",ratting: "3.2",deliveryCharge: "60 ৳"),
      RestaurantModel(id: 1,image: Images.restaurant_one,name: "Isti Restaurant",foodName: "Burger-Fast Food-Chinese- Drinks And Beverage",discount: "40% OFF",ratting: "4.2",deliveryCharge: "60"),
      RestaurantModel(id: 2,image: Images.restaurant_two,name: "Isti Restaurant",foodName: "Burger-Fast Food-Chinese- Drinks And Beverage",discount: "10% OFF",ratting: "4.4",deliveryCharge: "50"),
      RestaurantModel(id: 2,image: Images.restaurant_three,name: "Isti Restaurant",foodName: "Burger-Fast Food-Chinese- Drinks And Beverage",discount: "10% OFF",ratting: "4.1",deliveryCharge: "40"),
    ];
    return restaurantList;
  }
}