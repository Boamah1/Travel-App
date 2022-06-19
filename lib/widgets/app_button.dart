import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  // Note the '?' is to show it if optional whiles 'Final'is not.
  IconData? icon;
  String? text;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;
  BorderRadius? borderRadius;
  AppButtons({
    Key? key,
    // since it optional there is no need for 'required'.
    this.isIcon = false,
    this.icon,
    this.text = "Hi",
    required this.size,
    required this.color,
    this.borderRadius,
    required this.backgroundColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: backgroundColor, width: 1.0),
        borderRadius: borderRadius,
        color: backgroundColor,
      ),
      child: isIcon == false
          ? Center(child: AppText(text: text!, color: color))
          : Center(child: Icon(icon, color: color)),
    );
  }
}
