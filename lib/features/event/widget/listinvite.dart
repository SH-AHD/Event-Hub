import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/constants/app_colors.dart';
import 'package:event_hub/core/constants/app_network_imgs.dart';
import 'package:event_hub/features/event/widget/circ.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FollowerItem extends StatefulWidget {
  final String image;
  final String name;
  final String followers;

  const FollowerItem({
    Key? key,
    required this.image,
    required this.name,
    required this.followers,
  }) : super(key: key);

  @override
  State<FollowerItem> createState() => _FollowerItemState();
}

class _FollowerItemState extends State<FollowerItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: CirProfilePic1(img: widget.image)),
      title: Text(widget.name),
      subtitle: Text(widget.followers),
      trailing: IconButton(
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        icon: SvgPicture.asset(
          isSelected ? AppAssets.selectSvg : AppAssets.nonselectSvg,
        ),
        color: AppColors.whiteColor,
      ),
    );
  }
}

final List<Map<String, dynamic>> followers = [
  {
    "image": AppNetworkImgs.imgProf1,
    "name": "Mahdy",
    "followers": "1566 Followers",
  },
  {
    "image": AppNetworkImgs.imgProf2,
    "name": "John Smith",
    "followers": "350 Followers",
  },
  {
    "image": AppNetworkImgs.imgProf3,
    "name": "Sarah Kim",
    "followers": "120 Followers",
  },
  {
    "image": AppNetworkImgs.imgProf1,
    "name": "Alex Lee",
    "followers": "200 Followers",
  },
  {
    "image": AppNetworkImgs.imgProf2,
    "name": "John Smith",
    "followers": "350 Followers",
  },
  {
    "image": AppNetworkImgs.imgProf3,
    "name": "Sarah Kim",
    "followers": "120 Followers",
  },
  {
    "image": AppNetworkImgs.imgProf1,
    "name": "Alex Lee",
    "followers": "200 Followers",
  },
  {
    "image": AppNetworkImgs.imgProf2,
    "name": "John Smith",
    "followers": "350 Followers",
  },
  {
    "image": AppNetworkImgs.imgProf3,
    "name": "Sarah Kim",
    "followers": "120 Followers",
  },
  {
    "image": AppNetworkImgs.imgProf1,
    "name": "Alex Lee",
    "followers": "200 Followers",
  },
  {
    "image": AppNetworkImgs.imgProf2,
    "name": "John Smith",
    "followers": "350 Followers",
  },
  {
    "image": AppNetworkImgs.imgProf3,
    "name": "Sarah Kim",
    "followers": "120 Followers",
  },
];
