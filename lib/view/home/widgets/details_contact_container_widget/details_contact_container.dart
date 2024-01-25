import 'package:adv_ks_binu_assosciates/view/colors/colors.dart';
import 'package:adv_ks_binu_assosciates/view/fonts/google_monstre.dart';
import 'package:adv_ks_binu_assosciates/view/fonts/google_poppins.dart';
import 'package:adv_ks_binu_assosciates/view/widgets/primary_font_widget.dart';
import 'package:adv_ks_binu_assosciates/view/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactAndDeatilsWidget extends StatelessWidget {
  const ContactAndDeatilsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
       decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.black12,
                      Color.fromARGB(255, 121, 42, 22),
                      Colors.black45,
                      Color.fromARGB(255, 121, 42, 22)
                    ],
                  )),
      height: ResponsiveWebSite.isDesktop(context)
          ? 500
          : ResponsiveWebSite.isMobile(context)
              ? 800
              : 800,
      child: ResponsiveWebSite.isDesktop(context)
          ? Row(
              //>>>>>>>>>>>>>>>>>>>>    DESK TOP VIEW <<<<<<<<<<<<<<<<<<<<<<
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 400,
                  width: 300,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                        ),
                        child: GoogleMonstserratWidgets(
                          text: '''GET STARTED''',
                          fontsize: 22,
                          color: cWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 100,
                        ),
                        child: GestureDetector(
                          onTap: () => launchWhatsAppUrl(),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber)),
                            child: Center(
                              child: GoogleMonstserratWidgets(
                                  text: 'Fix Appointment',
                                  fontsize: 12,
                                  color: cWhite),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  width: 1,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: 400,
                  width: 300,
                  // color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GoogleMonstserratWidgets(
                        text: '''Emergency contacts''',
                        fontsize: 24,
                        color: cWhite,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 300,
                        width: 500,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '📞 +91 9746315509',
                                style: TextStyle(color: cWhite),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  '✉️ info@advksbinuassociates.com',
                                  style: TextStyle(color: cWhite),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  launchWhatsAppUrl();
                                },
                                child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("WhatsApp Us",style: TextStyle(color: Colors.white),),
                                    SizedBox(width: 10,),
                                    Image.asset(
                                      "assets/images/watsapp.png",
                                      height: screenSize.width / 22,
                                      width: screenSize.width / 22,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  width: 1,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: 400,
                  width: 450,
                  // color: Colors.amber.withOpacity(0.1),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: GooglePoppinsWidgets(
                          text: 'Our Offices',
                          fontsize: 20,
                          color: cWhite,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [    
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20.0, left: 20, top: 20),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Image.asset(
                                  'assets/images/ksbinulogo.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: PrimaryFontWidget(
                                    text: "Adv. Mrs. K S Binu & Associates",
                                    fontSize: 16,
                                    fontweight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            PrimaryFontWidget(
                                text:
                                    'Mrs,K.S.Binu,office at P&P  arcade,\n near Gandhi jn,\n Kottarakara.Kollam,District.',
                                fontSize: 13,
                                fontweight: FontWeight.w400,
                                color: Colors.white)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 5),
                            Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            PrimaryFontWidget(
                                text: '+91 9746315509',
                                fontSize: 13,
                                fontweight: FontWeight.w400,
                                color: Colors.white)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            PrimaryFontWidget(
                                text:
                                    'info@advksbinuassociates.com,\nadvksbinuassociates@gmail.com',
                                fontSize: 13,
                                fontweight: FontWeight.w400,
                                color: Colors.white)
                          ],
                        ),
                      ),
                    ],
                  ),
                    ],
                  ),
                )
              ],
            )
          : ResponsiveWebSite.isMobile(
                  context) //>>>>>>>>>>>>>>>> MOBILE VIEW    <<<<<<<<<<<<<<<<<<<<<
              ? Column(
                  children: [
                    SizedBox(
                      height: 150,

                      // color: Colors.amber,
                      child: Column(
                        children: [
                             Padding(
                                    padding:  EdgeInsets.only(
                                        left:
                                           ResponsiveWebSite.isMobile(context)?15:  180,
                                            
                                        top: 0
                                          ),
                                    child: SizedBox(
                                      width: 400,
                                      height: 100,
                                      child: Text(
                                        "At Mrs. K S Binu & Associates, we understand that family matters require delicate and compassionate handling. Our team of dedicated family court advocates is committed to providing you with expert legal advice and representation to navigate the complexities of family law. With years of experience, we strive to achieve the best possible outcomes for our clients.",
                                        style: TextStyle(
                                            fontSize:
                                                ResponsiveWebSite.isDesktop(context)? 14  : 12,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 8,
                            ),
                            child: GestureDetector(
                              onTap: () => launchWhatsAppUrl(),
                              child: Container(
                                height: 30,
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.amber)),
                                child: Center(
                                  child: GoogleMonstserratWidgets(
                                      text: 'Fix Appointment',
                                      fontsize: 12,
                                      color: cWhite),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      height: 250,
                      // color: Colors.amber,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GoogleMonstserratWidgets(
                            text: '''Emergency contacts''',
                            fontsize: 24,
                            color: cWhite,
                            fontWeight: FontWeight.bold,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 1,
                              width: 80,
                              color: const Color.fromARGB(255, 173, 128, 112),
                            ),
                          ),
                          SizedBox(
                            height: 150,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  const Text(
                                    '📞 +91 9746315509',
                                    style: TextStyle(color: cWhite),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      '✉️ info@advksbinuassociates.com',
                                      style: TextStyle(color: cWhite),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => launchWhatsAppUrl(),
                                    child: SizedBox(
                                      height: 70,
                                      width: 150,
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("WhatsApp Us",style: TextStyle(color: Colors.white),),
                                    SizedBox(width: 10,),
                                    Image.asset(
                                      "assets/images/watsapp.png",
                                      height: screenSize.width / 22,
                                      width: screenSize.width / 22,
                                    ),
                                  ],
                                ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 380,
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [    
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20.0, left: 20, top: 20),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Image.asset(
                                  'assets/images/ksbinulogo.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: PrimaryFontWidget(
                                    text: "Adv. Mrs. K S Binu & Associates",
                                    fontSize: 16,
                                    fontweight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            PrimaryFontWidget(
                                text:
                                    'Mrs,K.S.Binu,office at P&P  arcade,\n near Gandhi jn,\n Kottarakara.Kollam,District.',
                                fontSize: 13,
                                fontweight: FontWeight.w400,
                                color: Colors.white)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 5),
                            Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            PrimaryFontWidget(
                                text: '+91-9746315509',
                                fontSize: 13,
                                fontweight: FontWeight.w400,
                                color: Colors.white)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            PrimaryFontWidget(
                                text:
                                    'info@advksbinuassociates.com,\nadvksbinuassociates@gmail.com',
                                fontSize: 13,
                                fontweight: FontWeight.w400,
                                color: Colors.white)
                          ],
                        ),
                      ),
                    ],
                  ),
                    )
                  ],
                )
              : Column(
                  /// >>>>>>>>>>>>>>>>>>>>>> TAB VIEW <<<<<<<<<<<<<<
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 200,
                          width: 300,
                          // color: Colors.amber,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 0,
                                ),
                                child: GoogleMonstserratWidgets(
                                  text: '''GET STARTED''',
                                  fontsize: 22,
                                  color: cWhite,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 100,
                                ),
                                child: GestureDetector(
                                  onTap: () => launchWhatsAppUrl(),
                                  child: Container(
                                    height: 40,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.amber)),
                                    child: Center(
                                      child: GoogleMonstserratWidgets(
                                          text: 'Fix Appointment',
                                          fontsize: 12,
                                          color: cWhite),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 300,
                          width: 1,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 400,
                          width: 300,
                          // color: Colors.amber,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GoogleMonstserratWidgets(
                                text: '''Emergency contacts''',
                                fontsize: 24,
                                color: cWhite,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                height: 200,
                                width: 500,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        '📞 +91 9746315509',
                                        style: TextStyle(color: cWhite),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          '✉️ info@advksbinuassociates.com',
                                          style: TextStyle(color: cWhite),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          launchWhatsAppUrl();
                                        },
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("WhatsApp Us",style: TextStyle(color: Colors.white),),
                                    SizedBox(width: 10,),
                                    Image.asset(
                                      "assets/images/watsapp.png",
                                      height: screenSize.width / 22,
                                      width: screenSize.width / 22,
                                    ),
                                  ],
                                ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 380,
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [    
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20.0, left: 20, top: 20),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Image.asset(
                                  'assets/images/ksbinulogo.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              PrimaryFontWidget(
                                  text: "Adv. Mrs. K S Binu & Associates",
                                  fontSize: 16,
                                  fontweight: FontWeight.w400,
                                  color: Colors.white)
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            PrimaryFontWidget(
                                text:
                                    'Mrs,K.S.Binu,office at P&P  arcade,\n near Gandhi jn,\n Kottarakara.Kollam,District.',
                                fontSize: 13,
                                fontweight: FontWeight.w400,
                                color: Colors.white)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 5),
                            Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            PrimaryFontWidget(
                                text: '+91-9746315509',
                                fontSize: 13,
                                fontweight: FontWeight.w400,
                                color: Colors.white)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            PrimaryFontWidget(
                                text:
                                    'info@advksbinuassociates.com,\nadvksbinuassociates@gmail.com',
                                fontSize: 13,
                                fontweight: FontWeight.w400,
                                color: Colors.white)
                          ],
                        ),
                      ),
                    ],
                  ),
                    )
                  ],
                ),
    );
  }
}

final Uri _whatsAppUrl = Uri.parse(
    "https://wa.me/9746315509/?text=${Uri.parse('Message from website visitor, Hi need to chat with you')}");

Future<void> launchWhatsAppUrl() async {
  if (!await launchUrl(_whatsAppUrl)) {
    throw 'Could not launch $_whatsAppUrl';
  }
}
