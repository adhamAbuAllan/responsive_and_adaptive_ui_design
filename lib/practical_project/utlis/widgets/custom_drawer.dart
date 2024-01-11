import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/generated/assets.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/model/user_info.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/widgets/user_info_list_tile.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/model/drawer_item_model.dart';

import 'darwer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(.7),
      child: const CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: UserInfoListTile(
            userInfo: UserInfoModel(
              image: Assets.imagesAvatarThree,
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com"
            )
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        DrawerItemsListView(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(child: SizedBox(height: 30,)),
              InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'sittings', image: Assets.imagesSetting)),
              InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', image: Assets.imagesLogout)),
              SizedBox(
                height: 48,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
