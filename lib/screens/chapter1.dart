import 'package:flutter/material.dart';
import 'package:soft_skills/constants.dart';
import 'package:soft_skills/screens/reader.dart';
import 'package:velocity_x/velocity_x.dart';

class ChapterScreen extends StatelessWidget {
  const ChapterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(chapter.title!),
        title: 'Chapter 1'.text.make(),
      ),
      body: Container(
        color: Vx.gray100,
        child: Column(
          children: [
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Introduction',
                      subtitle: 'Placement process is the medium...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Round 1 - Aptitude',
                      subtitle: 'Aptitude tests are the simplest...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen1(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Round 2 - Group Discussion',
                      subtitle: 'Nowadays Group Discussion is...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen2(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Round 3 - Technical Round',
                      subtitle: 'There can be two types of...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen3(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Round 4 - Programming Round',
                      subtitle: 'This is a round where...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen4(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Round 5 - HR Round',
                      subtitle: 'This is the final round...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen5(),
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
