import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/generated/assets.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(.7),
      child: const Column(children: [
        UserInfoListTile(
            image: Assets.imagesAvatarOne, title: "Lekan Okeowo", subtitle: "demo@gmail.com")
      ]),
    );
  }
}
