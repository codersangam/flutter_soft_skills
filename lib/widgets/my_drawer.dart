import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:soft_skills/screens/help_support.dart';
import 'package:soft_skills/screens/privacy_policy.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:nb_utils/nb_utils.dart';
import 'custom_tile.dart';
import 'package:antdesign_icons/antdesign_icons.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 60),
        color: Colors.purple,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/images/sangam.png',
                    ),
                  ),
                  'Sangam Singh'.text.xl2.white.bold.make(),
                  'Flutter Developer'.text.white.make(),
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    launch(
                        'https://www.facebook.com/profile.php?id=100026804131628');
                  },
                  icon: const Icon(
                    AntIcons.facebookFilled,
                    color: Vx.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    launch('https://instagram.com/codersangam');
                  },
                  icon: const Icon(
                    AntIcons.instagramFilled,
                    color: Vx.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    launch(
                        'https://www.linkedin.com/in/sangam-singh-1b21941a0');
                  },
                  icon: const Icon(
                    AntIcons.linkedinFilled,
                    color: Vx.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    launch('https://github.com/codersangam');
                  },
                  icon: const Icon(
                    AntIcons.githubFilled,
                    color: Vx.white,
                  ),
                ),
              ],
            ),
            const Divider(
              color: Vx.white,
            ),
            CustomTile(
              label: 'Privacy Policy'.text.white.make(),
              myIcon: const Icon(Icons.security, color: Vx.white),
              myTap: () {
                Navigator.push(
                  context,
                  (MaterialPageRoute(
                    builder: (context) => const PrivacyPolicyPage(),
                  )),
                );
              },
            ),
            CustomTile(
              label: 'Help and Support'.text.white.make(),
              myIcon: const Icon(
                Icons.help,
                color: Vx.white,
              ),
              myTap: () {
                Navigator.push(
                  context,
                  (MaterialPageRoute(
                    builder: (context) => const HelpAndSupportPage(),
                  )),
                );
              },
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: FutureBuilder<PackageInfo>(
                future: PackageInfo.fromPlatform(),
                builder: (_, snap) {
                  if (snap.hasData) {
                    return Text(
                      'V ${snap.data!.version.validate()}',
                      style: const TextStyle(color: Vx.white),
                    );
                  }
                  return const SizedBox();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
