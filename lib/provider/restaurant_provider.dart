
import 'package:flutter/cupertino.dart';
import 'package:lakshmipur_high_school/data/model/response/restaurant_model.dart';
import 'package:lakshmipur_high_school/data/repository/restaurant_repo.dart';

class RestaurantProvider extends ChangeNotifier{
  RestaurantRepo restaurantRepo;
  RestaurantProvider({@required this.restaurantRepo});

  List<RestaurantModel> _restaurantList = [];
  List<RestaurantModel> get restaurantList => _restaurantList;

  void initRestaurantList ()async{
    if(_restaurantList.length == 0){
      restaurantList.clear();
      restaurantRepo.getRestaurantList().forEach((restaurant) => restaurantList.add(restaurant));
      notifyListeners();

    }
  }
}