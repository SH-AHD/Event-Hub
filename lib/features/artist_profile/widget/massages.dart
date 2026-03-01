import 'package:event_hub/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Expanded massages() {
  return Expanded(
    child: OutlinedButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(AppAssets.chatSvg),
      label: const Text("Messages"),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12),
        side: const BorderSide(color: Color(0xFF5669FF)),
        foregroundColor: const Color(0xFF5669FF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    ),
  );
}
