// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:soft_skills/components/my_card.dart';
import 'package:soft_skills/components/my_drawer.dart';
import 'package:soft_skills/models/Chapter.dart';
import 'package:soft_skills/screens/chapter.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Soft Skills'.text.make(),
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
          itemCount: chapters.length,
          itemBuilder: (context, index) {
            var chapter = chapters[index];
            return InkWell(
              child: MyCard(
                chapter: chapters[index],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChapterScreen(
                      chapter: chapter,
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
