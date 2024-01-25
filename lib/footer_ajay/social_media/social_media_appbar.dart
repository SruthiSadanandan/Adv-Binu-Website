// ignore_for_file: must_be_immutable
import 'package:adv_ks_binu_assosciates/utils/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaContactPage extends StatelessWidget {
  SocialMediaContactPage({super.key});
  final Uri _faceBookUrl =
      Uri.parse('https://www.facebook.com/profile.php?id=61554282723778');
  final Uri _twitterUrl = Uri.parse('https://twitter.com/AiLepton56051');
  final Uri _utubeUrl =
      Uri.parse('https://www.youtube.com/channel/UCazTpnQuOU8yZaVTCmlz14Q');
  final Uri _instaUrl = Uri.parse('https://www.instagram.com/leptonai/');
  //
 
  Future<void> _launchFacebookUrl() async {
    if (!await launchUrl(_faceBookUrl)) {
      throw 'Could not launch $_faceBookUrl';
    }
  }

  Future<void> _launchTwitterUrl() async {
    if (!await launchUrl(_twitterUrl)) {
      throw 'Could not launch $_twitterUrl';
    }
  }

  Future<void> _launchyouTubeUrl() async {
    if (!await launchUrl(_utubeUrl)) {
      throw 'Could not launch $_utubeUrl';
    }
  }

  Future<void> _launchInstaUrl() async {
    if (!await launchUrl(_instaUrl)) {
      throw 'Could not launch $_instaUrl';
    }
  }

  

  final Uri _url =
      Uri.parse('https://storage.googleapis.com/scipro-bucket/app-release.apk');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveWebSite.isDesktop(context)
            ? SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _launchFacebookUrl();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: CircleAvatharWidget(
                          imagePath: "assets/images/facebook.png",
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchInstaUrl();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: CircleAvatharWidget(
                          imagePath: "assets/images/insta.png",
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchTwitterUrl();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: CircleAvatharWidget(
                          imagePath: "assets/images/twitter-x.png",
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchyouTubeUrl();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: CircleAvatharWidget(
                          imagePath: "assets/images/utube.png",
                        ),
                      ),
                    ),
                   
                  ],
                ),
              )
            : SizedBox(
                width: ResponsiveWebSite.isMobile(context)?70: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _launchFacebookUrl();
                      },
                      child: Padding(
                        padding:  EdgeInsets.only(left:ResponsiveWebSite.isMobile(context)?0: 4),
                        child: CircleAvatharWidget(
                          imagePath: "assets/images/facebook.png",
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchInstaUrl();
                      },
                      child: Padding(
                        padding:  EdgeInsets.only(left:ResponsiveWebSite.isMobile(context)?0: 4),
                        child: CircleAvatharWidget(
                          imagePath: "assets/images/insta.png",
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchTwitterUrl();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: ResponsiveWebSite.isMobile(context)?0:4),
                        child: CircleAvatharWidget(
                          imagePath: "assets/images/twitter-x.png",
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchyouTubeUrl();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left:ResponsiveWebSite.isMobile(context)?0: 4),
                        child: CircleAvatharWidget(
                          imagePath: "assets/images/utube.png",
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
      ],
    );
  }
}

class CircleAvatharWidget extends StatelessWidget {
  String imagePath;

  CircleAvatharWidget({
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius:ResponsiveWebSite.isMobile(context)?8: 8,
      backgroundColor: Colors.transparent,
      //  const Color(0xFF1493d2),
      child: Image.asset(
        imagePath,
        height:ResponsiveWebSite.isMobile(context)?15: 15,
        width:ResponsiveWebSite.isMobile(context)?15: 15,
      ),
    );
  }
}

class CircleAvathar1Widget extends StatelessWidget {
  String imagePath;

  CircleAvathar1Widget({
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: ResponsiveWebSite.isMobile(context)?25: ResponsiveWebSite.isTablet(context)?20: 35,
      backgroundColor: Colors.transparent,
      //  const Color(0xFF1493d2),
      child: Image.asset(
        imagePath,
        height:ResponsiveWebSite.isMobile(context)?25:60,
        width:ResponsiveWebSite.isMobile(context)?25:60,
      ),
    );
  }
}

class LeptonLogo extends StatelessWidget {
   LeptonLogo({super.key});
   final Uri _leptonUrl = Uri.parse('http://www.leptoncommunications.com');

   Future<void> _launchleptonUrl() async {
    if (!await launchUrl(_leptonUrl)) {
      throw 'Could not launch $_leptonUrl';
    }
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
    child: ResponsiveWebSite.isDesktop(context)? GestureDetector(
                      onTap: () {
                        _launchleptonUrl();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: CircleAvathar1Widget(
                          imagePath: "assets/images/leptonlogo.png",
                        ),
                      ),
                    ):
                    GestureDetector(
                      onTap: () {
                        _launchleptonUrl();
                      },
                      child: Padding(
                        padding:  EdgeInsets.only(left:ResponsiveWebSite.isMobile(context)?0: 4),
                        child: CircleAvathar1Widget(
                          imagePath: "assets/images/leptonlogo.png",
                        ),
                      ),
                    ),
    );
  }
}