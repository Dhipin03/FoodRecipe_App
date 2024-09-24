import 'package:flutter/material.dart';
import 'package:food_recipee_app_june/utils/constants/color_constants.dart';

class CustomProfileDataWidget extends StatelessWidget {
  String text1;
  String text2;
  CustomProfileDataWidget(
      {super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Reciepe',
          style: TextStyle(
              color: ColorConstants.greyShade1,
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        SizedBox(height: 2),
        Text(
          '3',
          style: TextStyle(
              color: ColorConstants.mainBlack,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
