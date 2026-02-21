import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/helpers/navigation.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/features/home/data/events_model.dart';
import 'package:event_hub/features/home/widgets/event_card.dart';
import 'package:event_hub/features/event/screen/event_screen.dart';
import 'package:flutter/material.dart';

class EventSection extends StatelessWidget {
  const EventSection({
    super.key,
    required this.sectionTitle,
    required this.events,
  });
  final String sectionTitle;
  final List<EventsModel> events;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(sectionTitle, style: TextStyles.title1Eventhub),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      "See All",
                      style: TextStyles.body2.copyWith(
                        color: AppColors.subColor,
                      ),
                    ),
                    const Icon(Icons.arrow_right, color: AppColors.subColor),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 300,
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return EventCard(
                  model: events[index],
                  onpressed: () {
                    pushPage(context: context, newScreen: EventScreen());
                  },
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10);
              },
              itemCount: events.length,
            ),
          ),
        ],
      ),
    );
  }
}
