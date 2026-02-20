import 'package:event_hub/core/constants/app_network_imgs.dart';

class EventsModel {
  final String eventTitle;
  final String imgurl;
  final String day;
  final String mon;
  final String address;

  EventsModel({required this.eventTitle, required this.imgurl, required this.day,required this.mon, required this.address});
}

 List<EventsModel> eventsList = [
  EventsModel(eventTitle: "Jo malone london’s mother’s day ", imgurl: AppNetworkImgs.maDay,day: "28", mon: "APRIL", address: "Radius Gallery • Santa Cruz, CA "),
  EventsModel(eventTitle: "International kids safe parents night out", imgurl: AppNetworkImgs.kidsSafe,day: "23", mon: "APRIL", address: "Lot 13 • Oakland, CA "),
 
];