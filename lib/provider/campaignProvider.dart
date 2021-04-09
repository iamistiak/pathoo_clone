
import 'package:flutter/material.dart';
import 'package:lakshmipur_high_school/data/model/response/campaign_model.dart';
import 'package:lakshmipur_high_school/data/repository/campaign_repo.dart';

class CampaignProvider extends ChangeNotifier{
  CampaignRepo campaignRepo;
  CampaignProvider({@required this.campaignRepo});

  List<CampaignModel> _campaignList = [];
  int _campaignSelectedIndex;

  List<CampaignModel> get campaignList => _campaignList;
  int get campaignSelectedIndex => _campaignSelectedIndex;

  void initCampaignList()async{
    if(_campaignList.length == 0){
      _campaignList.clear();
      campaignRepo.getCampaignList().forEach((campaign) => campaignList.add(campaign));
      _campaignSelectedIndex = 0;
      notifyListeners();
    }
  }
  void changeSelectedIndex(int selectedIndex){
    _campaignSelectedIndex = selectedIndex;
    notifyListeners();
  }
}