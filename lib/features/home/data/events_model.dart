import 'package:event_hub/core/constants/app_network_imgs.dart';

class EventsModel {
  final String? eventTitle;
  final String? imgurl;
  final String? day;
  final String? mon;
  final String? address;
  final String? fullDate;      
  final String? time;          
  final String? locationName;  
  final String? fullAddress;   
  final String? aboutEvent;    

  EventsModel({
    required this.eventTitle,
    required this.imgurl,
    required this.day,
    required this.mon,
    required this.address,
    required this.fullDate,
    required this.time,
    required this.locationName,
    required this.fullAddress,
    required this.aboutEvent,
  });
}

 List<EventsModel> eventsList = [
  EventsModel(
  eventTitle: "Jo malone london’s mother’s day",
  imgurl: AppNetworkImgs.maDay,
  day: "28",
  mon: "APR",
  address: "Radius Gallery • Santa Cruz, CA",
  fullDate: "28 April, 2021",
  time: "Tuesday, 4:00PM - 5:30PM",
  locationName: "Gala Convention Center",
  fullAddress: "36 Guild Street London, UK",
  aboutEvent: "Enjoy a special night celebrating mother's day with Jo Malone...",
),
EventsModel(
  eventTitle: "International kids safe parents night out",
  imgurl: AppNetworkImgs.kidsSafe,
  day: "23",
  mon: "APR",
  address: "Lot 13 • Oakland, CA",
  fullDate: "23 April, 2021",
  time: "Thursday, 5:00PM - 10:00PM",
  locationName: "Kids Park Center",
  fullAddress: "Oakland High Street, CA",
  aboutEvent: "A safe and fun night for kids while parents get some rest...",
),
];