import 'package:adv_ks_binu_assosciates/footer_ajay/footer_final.dart';
import 'package:adv_ks_binu_assosciates/view/colors/colors.dart';
import 'package:adv_ks_binu_assosciates/view/fonts/google_monstre.dart';
import 'package:adv_ks_binu_assosciates/view/fonts/google_poppins.dart';
import 'package:adv_ks_binu_assosciates/view/home/aboutuspage.dart';
import 'package:adv_ks_binu_assosciates/view/home/contacts_page.dart';
import 'package:adv_ks_binu_assosciates/view/home/services_page.dart';
import 'package:adv_ks_binu_assosciates/view/home/social_media_appbar.dart';
import 'package:adv_ks_binu_assosciates/view/home/who%20we%20are/who_we_are.dart';
import 'package:adv_ks_binu_assosciates/view/home/widgets/details_contact_container_widget/details_contact_container.dart';
import 'package:adv_ks_binu_assosciates/view/home/widgets/listing_services.dart';
import 'package:adv_ks_binu_assosciates/view/home/widgets/our_team_container_widget/our_Team_container.dart';
import 'package:adv_ks_binu_assosciates/view/home/widgets/video_section/video_sec_Container.dart';
import 'package:adv_ks_binu_assosciates/view/pages/article_management/article_view.dart';
import 'package:adv_ks_binu_assosciates/view/widgets/primary_font_widget.dart';
import 'package:adv_ks_binu_assosciates/view/widgets/responsive/responsive.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageMobile extends StatelessWidget {
       HomePageMobile({super.key});

final Uri _whatsAppUrl = Uri.parse(
    "https://wa.me/+9746315509/?text=${Uri.parse('Message from Website Visitor,I need an appointment')}");

Future<void> launchWhatsAppUrl() async {
  if (!await launchUrl(_whatsAppUrl)) {
    throw 'Could not launch $_whatsAppUrl';
  }
}
  @override
  Widget build(BuildContext context, ) {
    var screenSize = MediaQuery.of(context).size;
    double maxWidthValue = 800.0;
     final ScrollController sscrollcontroller = ScrollController();

    return DefaultTabController(
      length: 5,
      child: Scaffold(
      
        extendBodyBehindAppBar: true,
        appBar:  AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black.withOpacity(0.8),
         title: Container(
                  child: Column(
                    children: [Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 35,
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           const Column(
                             children: [
                               Padding(
                                        padding: EdgeInsets.only(top:2,),
                                        child: PrimaryFontWidget(
                                          text: "📧 info@ksbinuassociates.com ",
                                          fontSize: 11,
                                          color: Colors.white,    
                                        )
                                        ),
                                        Padding(
                                    padding:  EdgeInsets.only(top:5,),
                                    child: PrimaryFontWidget(
                                      text: "  📞+91 9746315509",
                                      fontSize: 11,
                                      color: Colors.white,    
                                    )
                                    ),
                             ],
                           ),
                           
                              const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 1),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: ResponsiveWebSite.isMobile(context)
                                          ? 5
                                          : 0,
                                      right: ResponsiveWebSite.isMobile(context)
                                          ? 0
                                          : 8),
                                  child: SocialMediaContactPage(),
                                ),
                              
                              ],
                            ),
                          ) 
                        ],
                      ),),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: ResponsiveWebSite.isDesktop(context)
                                    ? 40
                                    : ResponsiveWebSite.isTablet(context)
                                        ? 30
                                        : 0,
                                top: 10),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/ksbinulogo.png",
                                  height:
                                      35,
                                  width:
                                      35,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Adv.Mrs. K S BINU ",
                                        style: TextStyle(
                                            //fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize:
                                                ResponsiveWebSite.isMobile(context)
                                                    ? 16
                                                    : 18),
                                      ),
                                      const Text(
                                        "A S S O C I A T E S",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                      
                          const Spacer(),
                         Column(
                            children: [
                              Container(
                                     margin: const EdgeInsets.only(left: 90,top:10),
                                     child:GestureDetector(
                                      onTap: () {
                                       // clickFunction(context, );
                                    //    Navigator.push(context,MaterialPageRoute(builder: (context) {
                                    //  return const OnClickPage();
                                    //    },)) ;
                                      },
                                      child:  const Icon(
                                        Icons.dehaze,color: Colors.white,size: 20,)),
                                   ),
                                
                            ],
                          )
                        ],
                      ),
                      
                    ],
                  ),
                ),       
      ),
        backgroundColor: Colors.transparent,
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // Container(
                  //   child: Image.asset("assets/images/background1.jpg"),
                  // ),
                 Container(
                          width: double.infinity,
                          color: const Color.fromARGB(255, 6, 19, 39),
                          height: 550,
                          child: Container(
                              decoration:   BoxDecoration(
                                image: DecorationImage(
                                    image:
                                       const AssetImage("assets/images/background12.jpg"),
                                    scale: 1,
                                    fit: ResponsiveWebSite.isMobile(context)?BoxFit.fitHeight: BoxFit.cover),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:  const EdgeInsets.only(
                                        left:15,
                                        top: 485),
                                    child: Text(
                                      "Adv Mrs.K S BINU & ASSOCIATES ",
                                      style: TextStyle(
                                          fontSize:
                                             ResponsiveWebSite.isDesktop(context)? 32: ResponsiveWebSite.isTablet(context)? 35:25,
                                                  
                                          color: Colors.white),
                                    ),
                                  ),
                                  ResponsiveWebSite.isMobile(context)
                                      ? const Padding(
                                          padding: EdgeInsets.only( left:15,),
                                          child: Text(
                                            "Your Rights, Our Fights",
                                            style: TextStyle(
                                                fontSize: 20, color: Colors.white),
                                          ),
                                        )
                                      : const SizedBox(),
                                  //ResponsiveWebSite.isDesktop(context) ?
                             
                                  
                                ],
                              )),
                        ),
                      // ContactAndDeatilsContainerWidget(screenSize: screenSize),
                      const ContactAndDeatilsWidget(),
                        Container(
                            width: double.infinity,
                               decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.black,
                      Color.fromARGB(255, 219, 57, 17),
                      Colors.black12,
                      Colors.black,
                    ],
                  )),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 15, bottom: 15),
                                    child: Text(
                                      "Our Services",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              ResponsiveWebSite.isMobile(context)
                                                  ? 25
                                                  : 28,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const DesignForImagePageChange()

                                
                                ],
                              ),
                            )),
                            VideoSectionContainer(sscrollcontroller: sscrollcontroller),
                            Container(color: cGrey,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SizedBox(
                        height: ResponsiveWebSite.isMobile(context)
                            ? 350
                            : 500, // Adjust the height of the containers as needed
                        child: Column(
                          children: [
                            GooglePoppinsWidgets(
                              text: 'OUR ARTICLES',
                              fontsize: 25,
                              fontWeight: FontWeight.w800,
                              color: cWhite,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            StreamBuilder(
                                stream: FirebaseFirestore.instance
                                    .collection('ArticleManagement')
                                    .snapshots(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    return Expanded(
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: snapshot.data!.docs.length,
                                          itemBuilder: (context, index) {
                                            return Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                ArticleView(
                                                                    url: snapshot
                                                                            .data!
                                                                            .docs[index]
                                                                        [
                                                                        'articleUrl'])));
                                                  },
                                                  child: Container(
                                                      margin:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      width: ResponsiveWebSite
                                                              .isMobile(context)
                                                          ? 200
                                                          : 400, // Adjust the width of each container as needed
                                                      child: Container(
                                                        color: Colors.white,
                                                        child: Image.asset(
                                                            'assests/images/advo_logo_new.png'),
                                                      )),
                                                ),
                                                GoogleMonstserratWidgets(
                                                  text: snapshot.data!.docs[index]
                                                      ['articleTitle'],
                                                  fontsize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            );
                                          }),
                                    );
                                  } else {
                                    return const Text('');
                                  }
                                }),
                          ],
                        ),
                        // child: ListView(
                        //   scrollDirection: Axis.horizontal,
                        //   children: persionPhotos.map((photo) {
                        //     return Container(
                        //       margin: EdgeInsets.all(8.0),
                        //       width: 150, // Adjust the width of each container as needed
                        //       child: Container(
                        //         color: Colors.white,
                        //         child: Column(
                        //           children: [
                        //             Image.asset('assests/images/advo_logo_new.png'),
                        //             Text(
                        //               'data',
                        //               style: TextStyle(color: Colors.white),
                        //             )
                        //           ],
                        //         ),
                        //       ),
                        //       // decoration: BoxDecoration(
                        //       //   borderRadius: BorderRadius.circular(8.0),
                        //       //   image: DecorationImage(
                        //       //     image: AssetImage('assests/images/advo_logo_new.png'),
                        //       //     fit: BoxFit.cover,
                        //       //   ),
                        //       // ),
                        //     );
                        //   }).toList(),
                        // ),
                      ),
                    ),
                  ),
                            OurTeamContainerWidget(sscrollcontroller: sscrollcontroller),
                        const FooterFinalPage()
                ],
              ),
            ),
            const AboutUsPage(),
            const ServicesPage(),
            const ContactsPage(),
             const WhoWeAre()
            //const CompanyPage()
          ],
        ),
      //       endDrawer: Drawer(
      //    elevation: 20.0,
      //   child: ListView(
      
      //     padding: EdgeInsets.zero,
      //     children: [
      //        DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.black.withOpacity(0.8),
      //         ),
      //         child: const Text('ABOUT'),
      //       ),
      //       ListTile(
      //         title: const Text('Solution'),
      //         onTap: () {
      //           const SolutionPage();
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('I O T'),
      //         onTap: () {
      //           const IOTPage();
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('A I'),
      //         onTap: () {
      //           const AIPage();
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Company'),
      //         onTap: () {
      //           const CompanyPage();
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      ),
    );
  }
}