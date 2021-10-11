import 'package:flutter/material.dart';
import 'package:soft_skills/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding / 2),
      child: SingleChildScrollView(
        child: Card(
          child: Container(
            width: double.infinity,
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
                    height: 130,
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                ),
                title.text.xl2.bold.make().p8(),
                subtitle.text.xl.make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
