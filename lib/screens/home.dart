// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:soft_skills/components/my_drawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'chapters_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime? backButtonPressedTime;

  Future<bool> _onBackPressed() async {
    DateTime currentTime = DateTime.now();

    bool backButton = backButtonPressedTime == null ||
        currentTime.difference(backButtonPressedTime!) >
            const Duration(seconds: 3);

    if (backButton) {
      backButtonPressedTime = currentTime;
      Fluttertoast.showToast(
          msg: 'Doule click to exit app',
          backgroundColor: Colors.black,
          textColor: Colors.white);
      return false;
    }
    return true;
  }

  final _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        // drawer: const MyDrawer(),
        body: ZoomDrawer(
          controller: _drawerController,
          style: DrawerStyle.Style1,
          menuScreen: const MyDrawer(),
          mainScreen: ChaptersPage(
            _drawerController,
          ),
          borderRadius: 24.0,
          showShadow: true,
          angle: 0.0,
          backgroundColor: Vx.gray300,
          slideWidth: MediaQuery.of(context).size.width * 0.65,
          openCurve: Curves.fastOutSlowIn,
          closeCurve: Curves.bounceIn,
        ),
      ),
    );
  }
}
