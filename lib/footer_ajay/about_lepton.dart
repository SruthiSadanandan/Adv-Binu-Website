import 'package:adv_ks_binu_assosciates/utils/utils/responsive.dart';
import 'package:adv_ks_binu_assosciates/view/home/social_media_appbar.dart';
import 'package:adv_ks_binu_assosciates/view/widgets/primary_font_widget.dart';
import 'package:flutter/material.dart';


class KsbinuContainerWidget extends StatelessWidget {
  const KsbinuContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveWebSite.isDesktop(context)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: PrimaryFontWidget(
                        text: "Adv. Mrs. K S Binu & Associates",
                        fontSize: 18,
                        fontweight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: SizedBox(
                      width: 350,
                      //height: 250,
                      child: PrimaryFontWidget(
                          text:
                               "Our mission is to guide and support individuals and families through challenging legal situations with empathy and expertise. We believe in upholding the values of integrity, professionalism, and client-centered service. Mrs. K S Binu & Associates is your partner in finding swift and fair resolutions to family disputes.",
                          fontSize: 13,
                          fontweight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 10),
                    child: Container(
                      child: SocialMediaContactPage(),
                    ),
                  )
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: PrimaryFontWidget(
                        text: "Adv. Mrs. K S Binu & Associates",
                        fontSize: 15,
                        fontweight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, left: 10),
                    child: SizedBox(
                      width: 350,
                      //height: 250,
                      child: PrimaryFontWidget(
                          text:
                             "Our mission is to guide and support individuals and families through challenging legal situations with empathy and expertise. We believe in upholding the values of integrity, professionalism, and client-centered service. Mrs. K S Binu & Associates is your partner in finding swift and fair resolutions to family disputes.",
                          fontSize: 12,
                          fontweight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10),
                    child: Container(
                      child: SocialMediaContactPage(),
                    ),
                  )
                ],
              ),
      ],
    );
  }
}
