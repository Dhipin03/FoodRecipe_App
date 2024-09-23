import 'package:flutter/material.dart';
import 'package:food_recipee_app_june/utils/constants/color_constants.dart';
import 'package:food_recipee_app_june/view/notification_screen/widgets/notification_widget.dart';
import 'package:hugeicons/hugeicons.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: _appbarSection(),
          body: Padding(
            padding: const EdgeInsets.only(left: 16, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: ColorConstants.mainBlack),
                ),
                SizedBox(height: 12),
                Notification_widget(),
                SizedBox(height: 12),
                Notification_widget(),
                SizedBox(height: 16),
                Text(
                  'Yesterday',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: ColorConstants.mainBlack),
                ),
                SizedBox(height: 12),
                Notification_widget(removeindicator: true),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: Text(
                    "You're all set!",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: ColorConstants.greyShade1),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSize _appbarSection() {
    return PreferredSize(
      preferredSize: Size.fromHeight(120),
      child: AppBar(
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: ColorConstants.mainBlack),
        title: Text('Notifications'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: HugeIcon(
                icon: HugeIcons.strokeRoundedFilterHorizontal,
                color: ColorConstants.mainBlack),
          )
        ],
        bottom: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 20),
            dividerHeight: 0,
            unselectedLabelStyle:
                TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            labelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            unselectedLabelColor: ColorConstants.primaryColor,
            labelColor: ColorConstants.mainWhite,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.primaryColor),
            tabs: [
              Tab(
                child: Text('All'),
              ),
              Tab(
                child: Text('unread'),
              ),
              Tab(
                child: Text('Read'),
              ),
            ]),
      ),
    );
  }
}
