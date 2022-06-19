import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key? key, this.width = 120, this.isResponsive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isResponsive == true ? 272 : width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: isResponsive == true
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: isResponsive == true
                ? AppText(text: "Book Trip Now", color: Colors.white)
                : Container(),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
