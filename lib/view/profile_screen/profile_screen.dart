import 'package:flutter/material.dart';
import 'package:food_recipee_app_june/dummy_db.dart';
import 'package:food_recipee_app_june/utils/constants/color_constants.dart';
import 'package:food_recipee_app_june/view/global_widgets/Custom_recipecard.dart';
import 'package:food_recipee_app_june/view/global_widgets/custom_video_card.dart';
import 'package:food_recipee_app_june/view/profile_screen/widgets/custom_profiledata_widget.dart';
import 'package:food_recipee_app_june/view/recipee_details_screen/recipee_details_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _appBar_section(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildProfileseSection(),
              SizedBox(height: 20),
              _profiledataSection(),
              SizedBox(height: 12),
              _tabbarSection(),
              SizedBox(
                height: 400,
                child: TabBarView(
                  children: [
                    ListView.separated(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                      itemBuilder: (context, index) => CustomVideoCard(
                        onCardTaped: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RecipeeDetailsScreen(
                                  rating: DummyDb.trendingNowList[index]
                                      ["rating"],
                                  recipeeTitle: DummyDb.trendingNowList[index]
                                      ["title"],
                                  image: DummyDb.trendingNowList[index]
                                      ["imageurl"],
                                  profileImage: DummyDb.trendingNowList[index]
                                      ["profileImage"],
                                  userName: DummyDb.trendingNowList[index]
                                      ["userName"],
                                ),
                              ));
                        },
                        width: double.infinity,
                        rating: DummyDb.trendingNowList[index]["rating"],
                        duration: DummyDb.trendingNowList[index]["duration"],
                        imageUrl: DummyDb.trendingNowList[index]["imageurl"],
                        profileUrl: DummyDb.trendingNowList[index]
                            ["profileImage"],
                        title: DummyDb.trendingNowList[index]["title"],
                        userName: DummyDb.trendingNowList[index]["userName"],
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 16,
                      ),
                      itemCount: DummyDb.trendingNowList.length,
                    ),
                    ListView.builder(
                      itemCount: DummyDb.recipelist.length,
                      itemBuilder: (context, index) => CustomRecipeCard(
                          rating: DummyDb.recipelist[index]['rating'],
                          title: DummyDb.recipelist[index]['title'],
                          imageUrl: DummyDb.recipelist[index]['imageurl']),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TabBar _tabbarSection() {
    return TabBar(
      unselectedLabelStyle:
          TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
      labelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
      unselectedLabelColor: ColorConstants.primaryColor,
      labelColor: ColorConstants.mainWhite,
      padding: EdgeInsets.symmetric(horizontal: 20),
      dividerHeight: 0,
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstants.primaryColor),
      tabs: [
        Tab(
          child: Text('Video'),
        ),
        Tab(
          child: Text('Recipe'),
        )
      ],
    );
  }

  Column _profiledataSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomProfileDataWidget(text1: "Recipe", text2: "3"),
              CustomProfileDataWidget(text1: "Videos", text2: "13"),
              CustomProfileDataWidget(text1: "Followers", text2: "14K"),
              CustomProfileDataWidget(text1: "Following", text2: "120"),
            ],
          ),
        ),
        SizedBox(height: 20),
        Divider(
          color: ColorConstants.greyShade2,
        )
      ],
    );
  }

  Widget _buildProfileseSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorConstants.primaryColor)),
                width: 107,
                height: 36,
                child: Center(
                  child: Text(
                    'Edit profile',
                    style: TextStyle(
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Alessandra Blair',
            style: TextStyle(
                color: ColorConstants.mainBlack,
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
          SizedBox(height: 12),
          Text(
            "Hello World I'm Alessandra Blair, I'm\nfrom Italy 🇮🇹 I love cokking so much!",
            style: TextStyle(
                color: ColorConstants.greyShade1,
                fontWeight: FontWeight.normal,
                fontSize: 14),
          )
        ],
      ),
    );
  }

  AppBar _appBar_section() {
    return AppBar(
      titleTextStyle: TextStyle(
          color: ColorConstants.mainBlack,
          fontWeight: FontWeight.w600,
          fontSize: 24),
      title: Text('My profile'),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 23),
          child: Icon(
            Icons.more_horiz,
            size: 24,
          ),
        )
      ],
    );
  }
}
