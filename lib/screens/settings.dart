import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool tapped = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text.make(),
      ),
      body: Column(
        children: [
          ListTile(
            title: 'Dark Mode'.text.make(),
            trailing: CupertinoSwitch(
                value: tapped,
                onChanged: (bool nottapped) {
                  setState(() {
                    tapped = nottapped;
                  });
                }),
          )
        ],
      ),
    );
  }
}
