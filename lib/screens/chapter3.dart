import 'package:flutter/material.dart';
import 'package:soft_skills/constants.dart';
import 'package:velocity_x/velocity_x.dart';

import 'reader.dart';

class Chapter3 extends StatelessWidget {
  const Chapter3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(chapter.title!),
        title: 'Chapter 3'.text.make(),
      ),
      body: Container(
        color: Vx.gray100,
        child: Column(
          children: [
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Introduction',
                      subtitle: 'HR round is conducted...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen12(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Questions during Interview',
                      subtitle: 'Tell me about yourself...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen13(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

class ChapterName extends StatelessWidget {
  const ChapterName({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding / 2),
      child: ListTile(
        title: title.text.make(),
        subtitle: subtitle.text.make(),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
