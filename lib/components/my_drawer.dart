import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:soft_skills/screens/settings.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:nb_utils/nb_utils.dart';
import '../constants.dart';
import 'custom_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/images/sangam.png',
                ),
              ),
              'Sangam Singh'.text.xl2.bold.make(),
              'Flutter Developer'.text.make(),
              const Divider(
                color: Colors.black,
              ),
              CustomTile(
                label: 'Theme Setting'.text.make(),
                myIcon: const Icon(Icons.light_mode),
                myTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingScreen(),
                    ),
                  );
                },
              ),
              CustomTile(
                label: 'Privacy Policy'.text.make(),
                myIcon: const Icon(Icons.security),
                myTap: () {},
              ),
              CustomTile(
                label: 'Help and Support'.text.make(),
                myIcon: const Icon(Icons.help),
                myTap: () {},
              ),
              const Spacer(),
              FutureBuilder<PackageInfo>(
                future: PackageInfo.fromPlatform(),
                builder: (_, snap) {
                  if (snap.hasData) {
                    return Text(
                      'V ${snap.data!.version.validate()}',
                      style: const TextStyle(color: primaryColor),
                    );
                  }
                  return const SizedBox();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
