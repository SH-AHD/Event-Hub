import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/features/notification/widgets/notification_content.dart';
import 'package:event_hub/features/notification/widgets/reject_accept_buttons.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text('Notification', style: TextStyles.h4EventHub),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 35),
              NotificationContent(
                image: AppAssets.daivid,
                name: 'David Silbia',
                text1: 'Invite Jo Malone',
                text2: 'London’s Mother’s',
                time: 'Just now',
              ),
              SizedBox(height: 8),
              RejectAcceptButtons(),
              SizedBox(height: 16),
              NotificationContent(
                image: AppAssets.adnan,
                name: 'Adnan Safi',
                text1: 'Started',
                text2: 'following you',
                time: '5 min ago',
              ),
              SizedBox(height: 16),
              NotificationContent(
                image: AppAssets.joan,
                name: 'Joan Baker',
                text1: 'Invite A virtual',
                text2: 'Evening of Smooth Jazz',
                time: '20 min ago',
              ),
              SizedBox(height: 8),
              RejectAcceptButtons(),
              SizedBox(height: 16),
              NotificationContent(
                image: AppAssets.ronald,
                name: 'Ronald C.Kinch',
                text1: 'Like you',
                text2: 'events',
                time: '1 hr ago',
              ),
              SizedBox(height: 16),
              NotificationContent(
                image: AppAssets.clara,
                name: 'Clara Tolson',
                text1: 'Join your',
                text2: 'Event Gala Music Festival',
                time: '9 hr ago',
              ),
              SizedBox(height: 16),
              NotificationContent(
                image: AppAssets.jennifer,
                name: 'Jennifer Fritz',
                text1: 'Invite you',
                text2: 'International Kids Safe',
                time: 'Tue , 5:10 pm',
              ),
              SizedBox(height: 8),
              RejectAcceptButtons(),
              SizedBox(height: 16),
              NotificationContent(
                image: AppAssets.joan,
                name: 'Eric G. Prickett',
                text1: 'Started',
                text2: 'following you',
                time: 'Wed, 3:30 pm',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
