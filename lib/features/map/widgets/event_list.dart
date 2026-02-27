import 'package:event_hub/features/home/data/events_model.dart';
import 'package:event_hub/features/map/widgets/event_card_row.dart';
import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  const EventList({
    super.key,
  });
   

  @override
  Widget build(BuildContext context) {
    return Container(
  padding: EdgeInsets.symmetric(horizontal: 20),
      height: 120,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
         var model =eventsList[index];
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: EventCardRow(model: model));
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 16);
        },
        itemCount: eventsList.length,
      ),
    );
  }
}
