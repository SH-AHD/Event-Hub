import 'package:event_hub/core/constants/app_network_imgs.dart';
import 'package:flutter/foundation.dart';

class EventsModel {
  final String? id;
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
    this.id,
  });
}

List<EventsModel> eventsList = [
  EventsModel(
    id: '1',
    eventTitle: "Jo malone london’s mother’s day",
    imgurl: AppNetworkImgs.maDay,
    day: "28",
    mon: "APR",
    address: "Radius Gallery • Santa Cruz, CA",
    fullDate: "28 April, 2026",
    time: "Tuesday, 4:00PM - 5:30PM",
    locationName: "Gala Convention Center",
    fullAddress: "36 Guild Street London, UK",
    aboutEvent:
        "Enjoy a special night celebrating mother's day with Jo Malone...",
  ),
  EventsModel(
    id: '2',
    eventTitle: "International kids safe parents night out",
    imgurl: AppNetworkImgs.kidsSafe,
    day: "23",
    mon: "APR",
    address: "Lot 13 • Oakland, CA",
    fullDate: "23 April, 2026",
    time: "Thursday, 5:00PM - 10:00PM",
    locationName: "Kids Park Center",
    fullAddress: "Oakland High Street, CA",
    aboutEvent: "A safe and fun night for kids while parents get some rest...",
  ),
  EventsModel(
    id: '3',
    eventTitle: "Global Running Day",
    imgurl: AppNetworkImgs.globalRunning,
    day: "08",
    mon: "MAR",
    address: "Tiergarten • Berlin, Germany",
    fullDate: "08 March, 2026",
    time: "Sunday, 8:00AM - 11:30AM",
    locationName: "Brandenburg Gate",
    fullAddress: "Pariser Platz, 10117 Berlin, Germany",
    aboutEvent:
        "Run through the heart of Berlin starting from the historic Brandenburg Gate to celebrate Women's Day.",
  ),

  EventsModel(
    id: '4',
    eventTitle: "Berlin Street Food Festival",
    imgurl: AppNetworkImgs.streetFood,
    day: "15",
    mon: "MAY",
    address: "Kreuzberg • Berlin, Germany",
    fullDate: "15 May, 2026",
    time: "Friday, 12:00PM - 10:00PM",
    locationName: "Markthalle Neun",
    fullAddress: "Eisenbahnstraße 42, 10997 Berlin, Germany",
    aboutEvent:
        "Enjoy international flavors and local Berlin snacks in the most vibrant market in Kreuzberg.",
  ),
  EventsModel(
    id: '5',
    eventTitle: "Flutter & Dart Tech Meetup",
    imgurl: AppNetworkImgs.techMeetup,
    day: "10",
    mon: "JUN",
    address: "Mitte • Berlin, Germany",
    fullDate: "10 June, 2026",
    time: "Wednesday, 10:00AM - 5:00PM",
    locationName: "Berlin Congress Center (bcc)",
    fullAddress: "Alexanderstraße 11, 10178 Berlin, Germany",
    aboutEvent:
        "Deep dive into Clean Architecture and Flutter Best Practices at Berlin's premier tech hub.",
  ),
];
