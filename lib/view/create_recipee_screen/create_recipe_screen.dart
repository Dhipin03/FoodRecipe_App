import 'package:flutter/material.dart';
import 'package:food_recipee_app_june/utils/constants/color_constants.dart';
import 'package:food_recipee_app_june/view/global_widgets/custom_button.dart';
import 'package:food_recipee_app_june/view/global_widgets/custom_list_tile.dart';
import 'package:hugeicons/hugeicons.dart';

class CreateRecipeeScreen extends StatelessWidget {
  const CreateRecipeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // page title
              Text(
                "Create recipe",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.mainBlack,
                    fontSize: 24),
              ),
              SizedBox(height: 24),
              // seciton 1 : upload video seciton
              _buildRecipeeVideoSection(),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                    hintText: "Bento lunch box ideas for work",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorConstants.primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 16),
              CustomListTile(
                haveArrow: true,
              ),
              SizedBox(height: 16),
              CustomListTile(
                haveArrow: true,
              ),
              SizedBox(height: 16),
              Text(
                "Ingredients",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.mainBlack,
                    fontSize: 24),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                          hintText: "Beef",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorConstants.greyShade2,
                              ),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                          hintText: "250gr",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorConstants.greyShade2,
                              ),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(width: 12),
                  HugeIcon(
                    icon: HugeIcons.strokeRoundedRemoveSquare,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                          hintText: "Rice",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorConstants.greyShade2,
                              ),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                          hintText: "150gr",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorConstants.greyShade2,
                              ),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(width: 12),
                  HugeIcon(
                    icon: HugeIcons.strokeRoundedRemoveSquare,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: ColorConstants.greyShade1),
                          hintText: "Item name",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorConstants.greyShade2,
                              ),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: ColorConstants.greyShade1),
                          hintText: "Quantity",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorConstants.greyShade2,
                              ),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(width: 12),
                  HugeIcon(
                    icon: HugeIcons.strokeRoundedRemoveSquare,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "+ Add new Ingredient",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.mainBlack,
                    fontSize: 24),
              ),
              SizedBox(height: 20),
              CustomButton(
                buttonTextSize: 20,
                onButtonPressed: () {},
                text: "Save my recipes",
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildRecipeeVideoSection() {
    return Container(
      height: 200,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.pexels.com/photos/6544380/pexels-photo-6544380.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: ColorConstants.mainWhite,
                  child: HugeIcon(
                    icon: HugeIcons.strokeRoundedEdit02,
                    color: Colors.red,
                    size: 20,
                  ),
                ),
              ],
            ),
            CircleAvatar(
                radius: 24,
                backgroundColor: ColorConstants.lightBlack.withOpacity(.3),
                child: Icon(
                  Icons.play_arrow,
                  color: ColorConstants.mainWhite,
                  size: 20,
                )),
            CircleAvatar(
              backgroundColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
