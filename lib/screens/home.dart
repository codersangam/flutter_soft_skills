// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:soft_skills/components/my_card.dart';
import 'package:soft_skills/components/my_drawer.dart';
import 'package:soft_skills/screens/chapter1.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'chapter2.dart';
import 'chapter3.dart';
import 'chapter4.dart';
import 'chapter5.dart';

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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: 'Soft Skills'.text.make(),
        ),
        drawer: const MyDrawer(),
        body: const ChaptersPage(),
      ),
    );
  }
}

class ChaptersPage extends StatelessWidget {
  const ChaptersPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            child: const MyCard(
              title: 'Chapter 1',
              subtitle: 'What Happens in Company Placement Process?',
              image: 'assets/images/company.png',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChapterScreen(),
                ),
              );
            },
          ),
          InkWell(
            child: const MyCard(
              title: 'Chapter 2',
              subtitle: 'Group Discussion',
              image: 'assets/images/gd.png',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Chapter2(),
                ),
              );
            },
          ),
          InkWell(
            child: const MyCard(
              title: 'Chapter 3',
              subtitle: 'HR Interview Questions for Freshers',
              image: 'assets/images/question.png',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Chapter3(),
                ),
              );
            },
          ),
          InkWell(
            child: const MyCard(
              title: 'Chapter 4',
              subtitle: 'Do\'s and Dont\'s in Interview',
              image: 'assets/images/dress.png',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Chapter4(),
                ),
              );
            },
          ),
          InkWell(
            child: const MyCard(
              title: 'Chapter 5',
              subtitle: 'Body Language and Interview Behaviour',
              image: 'assets/images/body.png',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Chapter5(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
