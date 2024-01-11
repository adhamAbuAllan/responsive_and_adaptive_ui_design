import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/generated/assets.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/model/user_info.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatarOne,
        title: "Madrani Andi",
        subtitle: "Madran12@gmai.com"),
    UserInfoModel(
        image: Assets.imagesAvatarTow,
        title: "Madrani Andi",
        subtitle: "Madran12@gmai.com"),
    UserInfoModel(
        image: Assets.imagesAvatarOne,
        title: "Madrani Andi",
        subtitle: "Madran12@gmai.com")
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
     alignment: Alignment.centerLeft,
      child: SingleChildScrollView(

        scrollDirection: Axis.horizontal,
        child: Row(
          children: items
              .map((e) => IntrinsicWidth(child: UserInfoListTile(userInfo: e)))
              .toList(),
        ),
      ),
    );
    //   SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfo: items[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
