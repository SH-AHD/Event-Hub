import 'package:event_hub/core/constants/app_assets.dart';
import 'package:event_hub/core/styles/text_styles.dart';
import 'package:event_hub/core/widgets/svg_pic.dart';
import 'package:flutter/material.dart';

class SelectLocation extends StatefulWidget {
   const SelectLocation({
    super.key,
  });

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  String val='New Yourk, USA';

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Column(
        children: [
          Row(
            children: [
              Text("Current Location",style: TextStyles.subTitle2,),
            SizedBox(width: 4,),
            SvgPic(img: AppAssets.downArrowSvg, height: 6,),
            ],
          ),
    
          Text(val, style:TextStyles.title2Eventhub ,)
        ],
      ),
      
      
      itemBuilder:(context)=> [
    
         PopupMenuItem(
          value: "New Yourk, USA", 
          child: Text("New Yourk, USA"),),
        const PopupMenuItem(value: "Berlin, Germany", child: Text("Berlin, Germany")),
        const PopupMenuItem(value: "London, France", child: Text("London, France")),
      ],
      onSelected: (value) {
        setState((){val=value;});
      },
      );
  }
}