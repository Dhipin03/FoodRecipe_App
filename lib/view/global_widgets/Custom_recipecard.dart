import 'package:flutter/material.dart';
import 'package:food_recipee_app_june/utils/constants/color_constants.dart';

class CustomRecipeCard extends StatelessWidget {
  String rating;
  String title;
  String imageUrl;

  CustomRecipeCard({
    required this.rating,
    required this.title,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 200,
          width: 335,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage("$imageUrl"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorConstants.lightBlack.withOpacity(.3)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: ColorConstants.mainWhite,
                          ),
                          Text(
                            rating,
                            style: TextStyle(
                                color: ColorConstants.mainWhite,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: ColorConstants.mainWhite,
                      child: Icon(
                        Icons.more_horiz,
                        color: ColorConstants.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Text(
                        '$title',
                        style: TextStyle(
                            color: ColorConstants.mainWhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '12 Ingrediennts | 40 min',
                        style: TextStyle(
                            color: ColorConstants.mainWhite,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Student {
//   String name;
//   String? age;

//   Student({this.age = 0, required this.name});
// }
