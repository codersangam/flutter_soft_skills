import 'package:flutter/material.dart';
import 'package:soft_skills/constants.dart';
import 'package:soft_skills/models/chapter1.dart';
import 'package:velocity_x/velocity_x.dart';

class ChapterScreen extends StatelessWidget {
  const ChapterScreen({Key? key, this.chapter}) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final chapter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(chapter.title!),
        title: '${chapter.title}'.text.make(),
      ),
      body: Column(
        children: [
          ChapterName(
            chapterName: chapter1,
          ),
        ],
      ),
    );
  }
}

class ChapterName extends StatelessWidget {
  const ChapterName({
    Key? key,
    required this.chapterName,
  }) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final chapterName;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: chapterName.length,
      itemBuilder: (context, index) {
        var chapter = chapterName[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Card(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(defaultPadding / 2),
                  decoration: BoxDecoration(
                    color: Vx.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ListTile(
                    title: '${chapter.title}'.text.make(),
                    subtitle: '${chapter.subtitle}'.text.make(),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
