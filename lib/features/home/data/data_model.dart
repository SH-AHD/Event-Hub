
import 'package:event_hub/core/constants/app_assets.dart';

class Events_model{
  String? id;
  String? image;
  String? name;
  String? date;
  String? location;
  String? about;

  Events_model({
    this.id,
    this.image,
    this.name, 
    this.date, 
    this.location,
    this.about,
    });

}

List<Events_model> events = [
  Events_model(
    id: '1',
    image: AppAssets.joMelanoImg,
    name: 'Jo Malone London’s Mother’s Day Presents',
    date: 'Wed, Apr 28 •5:30 PM',
    location: 'Radius Gallery • Santa Cruz, CA ',
    about: 'Join us for a day of Flutter talks, workshops, and networking with fellow developers.'
  ),
  Events_model(
    id: '2',
    image: AppAssets.virtualEveningImg,
    name: 'A Virtual Evening of Smooth Jazz',
    date: 'Sat, May 1 •2:00 PM',
    location: 'Lot 13 • Oakland, CA',
    about: 'Explore the latest in technology and innovation at the annual Tech Expo.'
  ),
  Events_model(
    id: '3',  
    image: AppAssets.womensImg,
    name: 'Women\'s Leadership Conference 2021',
    date: 'Sat, Apr 24 • 1:30 PM',
    location: '53 Bush St • San Francisco, CA',
    about: 'Watch startups pitch their ideas to investors and industry experts.'
  ),
  Events_model(
    id: '4',
    image: AppAssets.internationalKidsImg ,
    name: 'International Kids Safe Parents Night Out',
    date: 'Fri, Apr 23 • 6:00 PM',
    location: 'Lot 13 • Oakland, CA',
    about: 'Watch startups pitch their ideas to investors and industry experts.'
  ),
  Events_model( 
    id: '5',
    image: AppAssets.collectivityImg,
    name: 'Collectivity Plays the Music of Jimi ',
    date: 'Mon, Jun 21 • 10:00 PM',
    location: 'Longboard Margarita Bar ',
    about: 'Watch startups pitch their ideas to investors and industry experts.'
  ),
  Events_model(
    id: '6',
    image: AppAssets.internationalGalaImg,
    name: 'International Gala Music Festival',
    date: 'Sun, Apr 25 • 10:15 AM',
    location: '36 Guild Street London, UK',
    about: 'Watch startups pitch their ideas to investors and industry experts.'
  ),
];