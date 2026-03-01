import 'package:flutter/material.dart';

Widget buildStatColumn(String count, String label) {
  return Column(
    children: [
      Text(count, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      Text(label, style: TextStyle(color: Colors.grey)),
    ],
  );
}

class line extends StatelessWidget {
  const line({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 1,
      color: Colors.grey[300],
      margin: EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
