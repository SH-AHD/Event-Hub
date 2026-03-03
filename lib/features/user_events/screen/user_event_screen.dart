import 'package:event_hub/core/constants/app_text.dart';
import 'package:event_hub/core/helpers/navigation.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/main_button.dart';
import 'package:event_hub/features/event/screen/all_events_screen.dart';
import 'package:event_hub/features/user_events/widgets/events_tab_bar.dart';
import 'package:event_hub/features/user_events/widgets/usr_event_body.dart';
import 'package:flutter/material.dart';

class UserEventsScreen extends StatefulWidget {
  const UserEventsScreen({super.key});

  @override
  State<UserEventsScreen> createState() => _UserEventsScreenState();
}

class _UserEventsScreenState extends State<UserEventsScreen> {
  int groupValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Events", style: TextStyles.h5EventHub),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EventsTabBar(
              groupValue: groupValue,
              onSelect: (newVal) {
                setState(() {
                  groupValue = newVal;
                });
              },
            ),
            SizedBox(height: 40),
            Expanded(
              child: groupValue == 1
                  ? const UsrEventBody(
                      eventText: AppText.noupcomingevent,
                      eventDisc: AppText.noupcomingeventdesc,
                    )
                  : const UsrEventBody(eventText: AppText.nopastevent,eventDisc: AppText.nopasteventdesc,),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SizedBox(
          height: 65,
          child: MainButton(
            text: "Explore",
            onPress: () {
              pushPage(context: context, newScreen: AllEventsScreen());
            },
          ),
        ),
      ),
    );
  }
}
