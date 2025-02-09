import 'package:flutter/material.dart';

class CircularTabs extends StatelessWidget {
  String tabName;
  CircularTabs({super.key, required this.tabName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: tabName.length.toDouble() * 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFE2F163),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.only(bottom: 8),
      child: Tab(
        text: tabName,
      ),
    );
  }
}
