import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/model/user_info.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/app_styles.dart';


class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfo});
final UserInfoModel userInfo;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: Center(
        child:
        ListTile(
          leading: SvgPicture.asset(userInfo.image),
        title: Text(userInfo.title,style: AppStyles.styleSemiBold16),
        subtitle: Text(userInfo.subtitle,style: AppStyles.styleRegular12,),
        ),
      ),
    );
  }
}
