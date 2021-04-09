
import 'package:lakshmipur_high_school/data/model/response/campaign_model.dart';
import 'package:lakshmipur_high_school/utill/images.dart';

class CampaignRepo{
  List<CampaignModel> getCampaignList(){
    List<CampaignModel> campaignList = [
      CampaignModel(id: 1,image: Images.campaign_one,campaignName: "Invite Friends & Get Discount on Food",campaignDescription: "Share this code with as many of your friends as you want and askthem to use this code for their first food order from Pathoo food. Yourfriends will get FREE DELIVERY with 20% OFF up to 50 taka (minimumorder value 250 taka ) on their first order and you will also get FreeDelivery along with 10% OFF up to 75 taka (minimum order value300 taka) for each successful referral!",campaignCode: "IST847"),
      CampaignModel(id: 2,image: Images.campaign_two,campaignName: "Invite Friends & Get Discount on Ride",campaignDescription: "Invite Friends & Get Discount ! \n\n Share this code with two of your friends and ask them to use it on their first Bike or Car ride . Both your friends will get amazing discount on their first rides while you get a discount when your friends complete their rides .",campaignCode: "FRI007"),
      CampaignModel(id: 3,image: Images.campaign_two,campaignName: "Invite Friends & Get Discount on Ride",campaignDescription: "Invite Friends & Get Discount ! \n\n Share this code with two of your friends and ask them to use it on their first Bike or Car ride . Both your friends will get amazing discount on their first rides while you get a discount when your friends complete their rides .",campaignCode: "IST147"),

    ];
    return campaignList;
  }
}