import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HelpAndSupportPage extends StatelessWidget {
  const HelpAndSupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        title: 'Help and Support'.text.make(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          'If you have any queries, please leave a mail at'
              .text
              .xl
              .makeCentered(),
          'admin@codersangam.com'.text.purple700.xl.bold.makeCentered(),
        ],
      ),
    );
  }
}
