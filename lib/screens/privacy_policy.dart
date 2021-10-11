import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        title: 'Privacy Policy'.text.make(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              'Privacy Policy'.text.bold.make(),
              'Sangam Singh built the Soft Skills app as an Open Source app. This SERVICE is provided by Sangam Singh at no cost and is intended for use as is.'
                  .text
                  .make(),
              'This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service. If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy. The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Soft Skills unless otherwise defined in this Privacy Policy.'
                  .text
                  .make(),
              10.heightBox,
              'Information Collection and Use'.text.bold.make(),
              'For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way. The app does use third party services that may collect information used to identify you.'
                  .text
                  .make(),
              10.heightBox,
              'Log Data'.text.bold.make(),
              'I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.'
                  .text
                  .make(),
              10.heightBox,
              'Links to Other Sites'.text.bold.make(),
              'This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.'
                  .text
                  .make(),
              10.heightBox,
              'Changes to This Privacy Policy'.text.bold.make(),
              'I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page. This policy is effective as of 2021-10-11'
                  .text
                  .make(),
              10.heightBox,
              'Contact Us'.text.bold.make(),
              'If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at admin@codersangam.com.'
                  .text
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
