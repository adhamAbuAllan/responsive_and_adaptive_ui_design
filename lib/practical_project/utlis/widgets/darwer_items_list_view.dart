import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/model/drawer_item_model.dart';

import '../../../generated/assets.dart';
import 'drawer_item.dart';
class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });


  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
int activeIndex = 0;
final  List<DrawerItemModel> items = [
  const DrawerItemModel(title: "Dashboard", image: Assets.imagesDashboard),
  const DrawerItemModel(title: "My Transaction", image: Assets.imagesTransaction),
  const DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
  const DrawerItemModel(title: "Wallet Account", image: Assets.imagesWalletAccount),
  const DrawerItemModel(title: "My Investments", image: Assets.imagesInvestments),
];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: items.length,

      shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {

        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: GestureDetector(
              onTap: (){
                  if(activeIndex != index){
                    setState(() {
                      activeIndex = index;
                    });
                  }
              },
              child: DrawerItem(drawerItemModel: items[index],isActive: activeIndex == index)),
        );
      },);
  }
}
