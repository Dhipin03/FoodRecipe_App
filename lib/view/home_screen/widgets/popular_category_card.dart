import 'package:flutter/material.dart';
import 'package:food_recipee_app_june/utils/constants/color_constants.dart';

class PopularCategoryCard extends StatelessWidget {
  String imageurl;
  String duration;
  String text;
  PopularCategoryCard(
      {super.key,
      required this.imageurl,
      required this.text,
      required this.duration});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 231,
          width: 150,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(12),
            height: 176,
            decoration: BoxDecoration(
                color: ColorConstants.greyShade3,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "$text",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorConstants.mainBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Time",
                          style: TextStyle(
                            fontSize: 12,
                            color: ColorConstants.greyShade1,
                          ),
                        ),
                        Text(
                          "$duration",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: ColorConstants.mainBlack,
                          ),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: ColorConstants.mainWhite,
                      child: Icon(
                        Icons.bookmark_border,
                        size: 16,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: CircleAvatar(
            backgroundImage: NetworkImage("$imageurl"),
            backgroundColor: ColorConstants.primaryColor,
            radius: 55,
          ),
        ),
      ],
    );
  }
}
