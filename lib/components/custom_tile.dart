// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    Key? key,
    required this.myIcon,
    required this.label,
    required this.myTap,
  }) : super(key: key);

  final myIcon;
  final label;
  final myTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0.0,
      leading: myIcon,
      title: label,
      onTap: myTap,
    );
  }
}
