import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

Widget aboutTab() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Text(
      "Turning thoughts into sound | A voice for what goes unsaid | Creating vibes, not following them | Music is the message | Built different, sounding different | Feel it before you understand it | From silence to sound",
      style: TextStyle(
        fontSize: 16,
        color: AppColors.headLineColor,
        height: 1.5,
      ),
    ),
  );
}

Widget eventTab() {
  List<String> eventImages = [
    AppAssets.eventimg2,
    AppAssets.eventimg3,
    AppAssets.eventimg1,
  ];

  return ListView.builder(
    padding: const EdgeInsets.all(15),
    itemCount: eventImages.length,
    itemBuilder: (context, index) {
      return Container(
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(color: AppColors.headLineColor.withOpacity(0.05)),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    eventImages[index],
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "1ST MAY - SAT - 2:00 PM",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      index == 0
                          ? "A virtual evening of smooth jazz"
                          : index == 1
                          ? "Jo malone london's mother's day"
                          : "Women's leadership conference",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: AppColors.headLineColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Widget reviewsTab() {
  return ListView.builder(
    padding: EdgeInsets.all(15),
    itemCount: 3,
    itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage(AppAssets.joan)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Rocks Velkeinjen",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "10 Feb",
              style: TextStyle(color: AppColors.grayColor, fontSize: 12),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: List.generate(
                5,
                (i) => Icon(
                  Icons.star,
                  color: AppColors.lightOrangeColor,
                  size: 16,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Cinemas is the ultimate experience to see new movies in Gold Class or Vmax.",
            ),
          ],
        ),
      );
    },
  );
}
