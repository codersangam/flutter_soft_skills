import 'package:flutter/material.dart';
import 'package:soft_skills/constants.dart';
import 'package:soft_skills/models/Chapter.dart';
import 'package:velocity_x/velocity_x.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.chapter,
  }) : super(key: key);

  final Chapter chapter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding / 2),
      child: SingleChildScrollView(
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              color: Vx.gray100,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.only(top: 25, bottom: 25),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                  ),
                  decoration: BoxDecoration(
                    color: Vx.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image(
                    height: 150,
                    fit: BoxFit.cover,
                    image: AssetImage(chapter.picture ??
                        'https://www.escapeauthority.com/wp-content/uploads/2116/11/No-image-found.jpg'),
                  ),
                ),
                chapter.title!.text.xl2.bold.make().p8(),
                chapter.subtitle!.text.xl.make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
