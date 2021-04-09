
import 'package:flutter/material.dart';
import 'package:lakshmipur_high_school/data/model/response/category_model.dart';
import 'package:lakshmipur_high_school/data/repository/category_repo.dart';

class CategoryProvider extends ChangeNotifier{
  final CategoryRepo categoryRepo;
  CategoryProvider({@required this.categoryRepo});

  List<CategoryModel> _categoryList = [];
  int _categorySelectedIndex;

  List<CategoryModel> get categoryList => _categoryList;
  int get categorySelectedIndex => _categorySelectedIndex;

  void initCategoryList() async {
    if(_categoryList.length == 0){
      _categoryList.clear();
      categoryRepo.getCategoryList().forEach((category) => _categoryList.add(category));
      _categorySelectedIndex = 0;
      notifyListeners();
    }
  }
  void changeSelectedIndex(int selectedIndex){
    _categorySelectedIndex = selectedIndex;
    notifyListeners();
  }
}