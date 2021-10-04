import 'package:flutter/material.dart';
import 'package:soft_skills/constants.dart';
import 'package:velocity_x/velocity_x.dart';

import 'reader.dart';

class Chapter5 extends StatelessWidget {
  const Chapter5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(chapter.title!),
        title: 'Chapter 5'.text.make(),
      ),
      body: Container(
        color: Vx.gray100,
        child: Column(
          children: [
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Introduction',
                      subtitle: 'Communication is not only...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen16(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'Before Interview',
                      subtitle: 'Do your homework and research...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen17(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'During Interview',
                      subtitle: 'Smile gently a bit as...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen18(),
                    ),
                  );
                }),
            InkWell(
                child: const Card(
                  child: ChapterName(
                      title: 'After Interview',
                      subtitle: 'Immediately say thank you...'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReaderScreen19(),
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
