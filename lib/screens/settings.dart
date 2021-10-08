// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _system = true;
  bool _light = false;
  bool _dark = false;

  ThemeMode? _themeMode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: _themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: 'Settings'.text.make(),
        ),
        body: Column(
          children: [
            ListTile(
              title: 'System'.text.make(),
              trailing: CupertinoSwitch(
                  value: _system,
                  onChanged: (newValue) {
                    _system
                        ? print('Blocked')
                        : setState(() {
                            _system = true;
                            _light = false;
                            _dark = false;
                            _themeMode = ThemeMode.system;
                          });
                  }),
            ),
            ListTile(
              title: 'Light'.text.make(),
              trailing: CupertinoSwitch(
                  value: _light,
                  onChanged: (newValue) {
                    _light
                        ? print('Blocked')
                        : setState(() {
                            _system = false;
                            _light = true;
                            _dark = false;
                            _themeMode = ThemeMode.light;
                          });
                  }),
            ),
            ListTile(
              title: 'Dark'.text.make(),
              trailing: CupertinoSwitch(
                  value: _dark,
                  onChanged: (newValue) {
                    _dark
                        ? print('Blocked')
                        : setState(() {
                            _system = false;
                            _light = false;
                            _dark = true;
                            _themeMode = ThemeMode.dark;
                          });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
