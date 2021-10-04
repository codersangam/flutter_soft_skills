import 'package:flutter/material.dart';
import 'package:soft_skills/constants.dart';
import 'package:velocity_x/velocity_x.dart';

import 'reader.dart';

class Chapter2 extends StatelessWidget {
  const Chapter2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(chapter.title!),
        title: 'Chapter 2'.text.make(),
      ),
      body: Container(
        color: Vx.gray100,
        child: Column(
          children: [
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Introduction',
                      subtitle: 'Nowadays Group Discussion is...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen6(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Key Points for GD',
                      subtitle: 'Ability to work in a team...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen7(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Simple Rules to Crack GD',
                      subtitle: 'Train yourself to be a...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen8(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Phrases used in GD', subtitle: 'I think...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen9(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Advantages in GD',
                      subtitle: 'It helps to shed away...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen10(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Done and Avoid in GD',
                      subtitle: 'Be as natural as...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen11(),
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
