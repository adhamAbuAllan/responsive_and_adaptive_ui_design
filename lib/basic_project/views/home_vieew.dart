import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/basic_project/views/widgets/cusotm_droawr.dart';
import 'package:responsive_and_adaptive_ui_design/basic_project/views/widgets/home_view_body.dart';

class HomView extends StatefulWidget {
  const HomView({super.key});

  @override
  State<HomView> createState() => _HomViewState();
}

class _HomViewState extends State<HomView> {
  GlobalKey<ScaffoldState>scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    key: scaffoldKey,

      drawer: CustomDrawer(),
      backgroundColor: Colors.grey.shade300,
      appBar: MediaQuery.sizeOf(context).width - 32 <  900 ?  AppBar(
        backgroundColor: Colors.black,
        leading:  IconButton(
       onPressed: (){scaffoldKey.currentState!.openDrawer();},icon: const Icon(   Icons.menu,
          color: Colors.white,),
        ),
      ): null,
      body: const HomeViewBody(),
    );
  }
}
