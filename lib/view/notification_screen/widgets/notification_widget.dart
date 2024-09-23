import 'package:flutter/material.dart';
import 'package:food_recipee_app_june/utils/constants/color_constants.dart';

class Notification_widget extends StatelessWidget {
  bool removeindicator;
  Notification_widget({super.key, this.removeindicator = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: ListTile(
            subtitleTextStyle: TextStyle(color: ColorConstants.greyShade1),
            subtitle: Text(
                'far far away, behind the world\nmountainns, far from the countries'),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Text(
                'New reciepe!',
                style: TextStyle(
                  color: ColorConstants.mainBlack,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          margin: EdgeInsets.only(left: 4),
          width: 335,
          height: 85,
          decoration: BoxDecoration(
              color: ColorConstants.greyShade4,
              borderRadius: BorderRadius.circular(10)),
        ),
        removeindicator == false
            ? Positioned(
                top: 10,
                right: 18,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: ColorConstants.primaryColor,
                ),
              )
            : SizedBox()
      ],
    );
  }
}
