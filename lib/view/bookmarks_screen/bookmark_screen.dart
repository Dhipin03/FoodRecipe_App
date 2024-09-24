import 'package:flutter/material.dart';
import 'package:food_recipee_app_june/dummy_db.dart';
import 'package:food_recipee_app_june/utils/constants/color_constants.dart';
import 'package:food_recipee_app_june/view/global_widgets/Custom_recipecard.dart';
import 'package:food_recipee_app_june/view/global_widgets/custom_video_card.dart';
import 'package:food_recipee_app_june/view/recipee_details_screen/recipee_details_screen.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          title: Text(
            "Saved recipes",
            style: TextStyle(
                color: ColorConstants.mainBlack, fontWeight: FontWeight.w600),
          ),
          bottom: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 20),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: ColorConstants.mainWhite,
            unselectedLabelColor: ColorConstants.primaryColor,
            dividerHeight: 0,
            indicator: BoxDecoration(
                color: ColorConstants.primaryColor,
                borderRadius: BorderRadius.circular(10)),
            tabs: [
              Tab(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text("Video"),
                ),
              ),
              Tab(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text("Recipe"),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              itemBuilder: (context, index) => CustomVideoCard(
                onCardTaped: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeeDetailsScreen(
                          rating: DummyDb.trendingNowList[index]["rating"],
                          recipeeTitle: DummyDb.trendingNowList[index]["title"],
                          image: DummyDb.trendingNowList[index]["imageurl"],
                          profileImage: DummyDb.trendingNowList[index]
                              ["profileImage"],
                          userName: DummyDb.trendingNowList[index]["userName"],
                        ),
                      ));
                },
                width: double.infinity,
                rating: DummyDb.trendingNowList[index]["rating"],
                duration: DummyDb.trendingNowList[index]["duration"],
                imageUrl: DummyDb.trendingNowList[index]["imageurl"],
                profileUrl: DummyDb.trendingNowList[index]["profileImage"],
                title: DummyDb.trendingNowList[index]["title"],
                userName: DummyDb.trendingNowList[index]["userName"],
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 16,
              ),
              itemCount: DummyDb.trendingNowList.length,
            ),
            SizedBox(
              height: 600,
              child: ListView.builder(
                itemCount: DummyDb.recipelist.length,
                itemBuilder: (context, index) => CustomRecipeCard(
                    rating: DummyDb.recipelist[index]['rating'],
                    title: DummyDb.recipelist[index]['title'],
                    imageUrl: DummyDb.recipelist[index]['imageurl']),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
