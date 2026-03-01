import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/features/artist_profile/screen/profie_artist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutEvent extends StatelessWidget {
  final String content;

  const AboutEvent({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        fontSize: 16,
        color: AppColors.grayColor,
        height: 1.5,
      ),
    );
  }
}

class artistInfo extends StatelessWidget {
  final String artistName;
  const artistInfo({super.key, required this.artistName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 52,
        height: 52,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.buttonArrowBackground,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ClipOval(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfieArtist()),
                );
              },
              child: Container(
                color: AppColors.lightGrayColor,
                child: SvgPicture.asset(AppAssets.artistSvg, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
      title: Text(
        artistName,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: const Text(
        "Artist",
        style: TextStyle(color: AppColors.grayColor, fontSize: 13),
      ),
      trailing: SizedBox(height: 35, child: ButtonFollow()),
    );
  }
}

class ButtonFollow extends StatefulWidget {
  const ButtonFollow({super.key});

  @override
  _ButtonFollowState createState() => _ButtonFollowState();
}

class _ButtonFollowState extends State<ButtonFollow> {
  bool isFollowed = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          isFollowed = !isFollowed;
        });
      },
      style: TextButton.styleFrom(
        backgroundColor: isFollowed
            ? AppColors.subColor.withOpacity(0.1)
            : AppColors.buttonArrowBackground.withOpacity(0.1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      child: Text(
        isFollowed ? "Followed" : "Follow",
        style: TextStyle(
          fontSize: 14,
          color: isFollowed ? AppColors.subColor : AppColors.primaryColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class titleEvent extends StatelessWidget {
  final String title;
  const titleEvent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
    );
  }
}
