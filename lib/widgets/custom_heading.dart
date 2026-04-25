import 'package:flutter/material.dart';
import 'package:ppp/utils/app_colors.dart';

// ignore: must_be_immutable
class CustomHeadings extends StatelessWidget {
  String headingtext;
  bool is_icon_show;

  CustomHeadings({
    super.key,
    required this.headingtext,
    this.is_icon_show = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ), // EdgeInsets.symmetric
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            headingtext,
            style: TextStyle(
              fontSize: 20,
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
            ), // TextStyle
          ), // Text
          is_icon_show == true
              ? Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.bgColorLight,
                    borderRadius: BorderRadius.circular(5),
                  ), // BoxDecoration
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "More",
                        style: TextStyle(color: AppColors.TextColor),
                      ), // Text
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.TextColor,
                        size: 14,
                      ), // Icon
                    ],
                  ),
                ) // Container
              : Container(),
        ],
      ),
    );
  }
}
