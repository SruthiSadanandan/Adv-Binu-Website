import 'package:adv_ks_binu_assosciates/utils/utils/responsive.dart';
import 'package:adv_ks_binu_assosciates/view/colors/colors.dart';
import 'package:adv_ks_binu_assosciates/view/fonts/google_poppins.dart';
import 'package:flutter/material.dart';


class ContactAndDeatilsContainerWidget extends StatelessWidget {
  const ContactAndDeatilsContainerWidget({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWebSite.isDesktop(context)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                 width:screenSize.width/3,
                height: 300,
                decoration: const BoxDecoration(
             
                  //border: Border.all(width: 1,color: Colors.white,)
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Text(
                              "Don't Hesitate to Ask ",
                              style: TextStyle(
                                  fontSize: screenSize.width / 60,
                                  color: cWhite),
                            ),
                            SizedBox(
                              height: screenSize.width / 50,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: const Color(0xFFCE8F2E))),
                                padding: EdgeInsets.only(
                                    left: screenSize.width / 100,
                                    top: 5,
                                    bottom: 5,
                                    right: screenSize.width / 100),
                                child: Text(
                                  "Fix Appointment",
                                  style: TextStyle(
                                      color: cWhite,
                                      fontSize: screenSize.width / 110),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: screenSize.width / 6,
                alignment: Alignment.center,
                child: const VerticalDivider(
                  color: Color(0xFFCE8F2E),
                  thickness: 1,
                ),
              ),
              Container(
                width:screenSize.width/3,
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  //border: Border.all(width: 1,color: Colors.white,)
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Emergency contacts",
                          style: TextStyle(
                              fontSize: screenSize.width / 60, color: cWhite),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.width / 200,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone,
                            size: screenSize.width / 75,
                            color: Colors.blueGrey,
                          ),
                          const Text(
                            "+91-9746315509",
                            style: TextStyle(color: cWhite),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email,
                            size: screenSize.width / 75,
                            color: Colors.blueGrey,
                          ),
                          const Text(
                            "info@advshailaraniassociates.com",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assests/images/whatsApp_image-removebg-preview.png",
                                height: screenSize.width / 15,
                                width: screenSize.width / 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: screenSize.width / 6,
                alignment: Alignment.center,
                child: const VerticalDivider(
                  color: Color(0xFFCE8F2E),
                  thickness: 1,
                ),
              ),
              Expanded(
                child: Container(
                  width: screenSize.width/3,
                  height: 300,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 80),
                          child: GooglePoppinsWidgets(
                            text: 'Our Office Address',
                            fontsize: 15,
                            color: cWhite,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        ///
                        Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 200,
                              child: Column(
                                 mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GooglePoppinsWidgets(
                                    text: 'TRIVANDRUM OFFICE',
                                    fontsize: 12,
                                    color: cWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  GooglePoppinsWidgets(
                                    text:
                                        '5th Floor, Karimpanal Statue Avenue,Near\nSecretariat Trivandrum-01\n Call +91 9562377604',
                                    fontsize: 11,
                                    color: cWhite,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GooglePoppinsWidgets(
                                    text: 'ERNAKULAM OFFICE',
                                    fontsize: 12,
                                    color: cWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  GooglePoppinsWidgets(
                                    text:
                                        'Balaji Building,Room \nNo:GE Road,\nNear MG Metro,Ernakulam',
                                    fontsize: 11,
                                    color: cWhite,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 180,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GooglePoppinsWidgets(
                                    text: 'BANGALORE OFFICE',
                                    fontsize: 12,
                                    color: cWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  GooglePoppinsWidgets(
                                    text:
                                        'No: 326, 2nd Floor,\n 2nd B Cross, Banaswadi\nBanglore',
                                    fontsize: 11,
                                    color: cWhite,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 180,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GooglePoppinsWidgets(
                                    text: 'CHENNAI OFFICE',
                                    fontsize: 12,
                                    color: cWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  GooglePoppinsWidgets(
                                    text:
                                        'No:25 Law Chamber \nMadras High Court,\nChennai-104',
                                    fontsize: 11,
                                    color: cWhite,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                children: [
                  
                  Container(
                    height: ResponsiveWebSite.isTablet(context)
                        ? screenSize.height/ 4
                        : screenSize.height / 4,
                    width: ResponsiveWebSite.isTablet(context)
                        ? screenSize.width / 4
                        : screenSize.width / 2,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      //border: Border.all(width: 1,color: Colors.white,)
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  "Don't Hesitate to Ask ",
                                  style: TextStyle(
                                      fontSize:ResponsiveWebSite.isMobile(context)?screenSize.width/40: screenSize.width / 50,
                                      color: cWhite),
                                ),
                                SizedBox(
                                  height: screenSize.width / 50,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: const Color(0xFFCE8F2E))),
                                    padding: EdgeInsets.only(
                                        left: ResponsiveWebSite.isMobile(context)?screenSize.width/70: screenSize.width / 100,
                                        top: 5,
                                        bottom: 5,
                                        right: ResponsiveWebSite.isMobile(context)?screenSize.width/70: screenSize.width / 100),
                                    child: Text(
                                      "Fix Appointment",
                                      style: TextStyle(
                                          color: cWhite,
                                          fontSize:ResponsiveWebSite.isMobile(context)?screenSize.width/70: screenSize.width / 100),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: screenSize.width / 6,
                    alignment: Alignment.center,
                    child: const VerticalDivider(
                      color: Color(0xFFCE8F2E),
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: ResponsiveWebSite.isMobile(context)
                        ? screenSize.width / 4
                        : screenSize.width / 4,
                    width: ResponsiveWebSite.isMobile(context)
                        ? screenSize.width / 4
                        : screenSize.width / 2,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      //border: Border.all(width: 1,color: Colors.white,)
                    ),
                    child:
                        //   ResponsiveWebSite.isTablet(context)?
                        //   Column(
                        //       // mainAxisAlignment: MainAxisAlignment.center,
                        //       // crossAxisAlignment: CrossAxisAlignment.center,
                        //       children: [
                        //         Center(
                        //           child: Text(
                        //             "Emergency contacts",
                        //             style: TextStyle(
                        //                 fontSize: screenSize.width / 80, color: cWhite),
                        //           ),
                        //         ),
                        //         SizedBox(
                        //           height: screenSize.width / 100,//change 200
                        //         ),
                        //         Row(
                        //           // mainAxisAlignment: MainAxisAlignment.center,
                        //           children: [
                        //             Icon(
                        //               Icons.phone,
                        //               size: screenSize.width / 95,
                        //               color: Colors.blueGrey,
                        //             ),
                        //            Text(
                        //               "+91-123456789",
                        //               style: TextStyle(
                        //                 color: cWhite,
                        //                 fontSize: screenSize.width/80,
                        //                 ),
                        //             ),
                        //           ],
                        //         ),
                        //         Row(
                        //           // mainAxisAlignment: MainAxisAlignment.start,
                        //           children: [
                        //             Icon(
                        //               Icons.email,
                        //               size: screenSize.width / 95,
                        //               color: Colors.blueGrey,
                        //             ),
                        //            Text(
                        //               "info@advshailaraniassociates.com",
                        //               style: TextStyle(
                        //                 fontSize: screenSize.width/100,
                        //                 color: Colors.white,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //         Column(
                        //           children: [
                        //             Image.asset(
                        //               "assests/images/whatsApp_image-removebg-preview.png",
                        //               height: screenSize.width / 15,
                        //               width: screenSize.width / 10,
                        //             ),
                        //           ],
                        //         ),
                        //       ],
                        //     )
              
                        //  :
                        Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "Emergency contacts",
                              style: TextStyle(
                                  fontSize:ResponsiveWebSite.isMobile(context)?screenSize.width/40: screenSize.width / 50,
                                  color: cWhite),
                            ),
                          ),
                          SizedBox(
                            height: screenSize.width / 200,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                                size: screenSize.width / 75,
                                color: Colors.blueGrey,
                              ),
                               Text(
                                "+91-9746315509",
                                style: TextStyle(
                                  color: cWhite,
                                  fontSize:ResponsiveWebSite.isMobile(context)?9: screenSize.width/75),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.email,
                                size: screenSize.width / 75,
                                color: Colors.blueGrey,
                              ),
                               Text(
                                "info@advshailaraniassociates.com",
                                style: TextStyle(
                                  fontSize: ResponsiveWebSite.isMobile(context)?9:screenSize.width/75,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assests/images/whatsApp_image-removebg-preview.png",
                                    height:ResponsiveWebSite.isMobile(context)?screenSize.width/13: screenSize.width / 15,
                                    width: ResponsiveWebSite.isMobile(context)?screenSize.width/8:screenSize.width / 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Container(
                  //   height: screenSize.width / 6,
                  //   alignment: Alignment.center,
                  //   child: const VerticalDivider(
                  //     color: Color(0xFFCE8F2E),
                  //     thickness: 1,
                  //   ),
                  // ),
                ],
              ),
              
              Column(
                children: [
                  Container(
                    width: screenSize.width,
                    height: 300,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: GooglePoppinsWidgets(
                            text: 'Our Office Address',
                            fontsize: ResponsiveWebSite.isMobile(context) ? 12: 15,
                            color: cWhite,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: screenSize.height/8,
                              width: screenSize.width/4,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GooglePoppinsWidgets(
                                    text: 'TRIVANDRUM OFFICE',
                                    fontsize:ResponsiveWebSite.isMobile(context)?10 : 12,
                                    color: cWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  GooglePoppinsWidgets(
                                    text:
                                        '5th Floor, Karimpanal Statue Avenue,Near\nSecretariat Trivandrum-01\n Call +91 9562377604',
                                    fontsize:ResponsiveWebSite.isMobile(context) ? 7: 11,
                                    color: cWhite,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenSize.height/8,
                              width: screenSize.width/4,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GooglePoppinsWidgets(
                                    text: 'ERNAKULAM OFFICE',
                                    fontsize: ResponsiveWebSite.isMobile(context)?10 : 12,
                                    color: cWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  GooglePoppinsWidgets(
                                    text:
                                        'Balaji Building,Room \nNo:GE Road,\nNear MG Metro,Ernakulam',
                                    fontsize: ResponsiveWebSite.isMobile(context) ? 7: 11,
                                    color: cWhite,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                               height: screenSize.height/8,
                              width: screenSize.width/4,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GooglePoppinsWidgets(
                                    text: 'BANGALORE OFFICE',
                                    fontsize: ResponsiveWebSite.isMobile(context)?10 : 12,
                                    color: cWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  GooglePoppinsWidgets(
                                    text:
                                        'No: 326, 2nd Floor,\n 2nd B Cross, Banaswadi\nBanglore',
                                    fontsize: ResponsiveWebSite.isMobile(context) ? 7: 11,
                                    color: cWhite,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenSize.height/8,
                              width: screenSize.width/4,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GooglePoppinsWidgets(
                                    text: 'CHENNAI OFFICE',
                                    fontsize: ResponsiveWebSite.isMobile(context)?10 : 12,
                                    color: cWhite,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  GooglePoppinsWidgets(
                                    text:
                                        'No:25 Law Chamber \nMadras High Court,\nChennai-104',
                                    fontsize: ResponsiveWebSite.isMobile(context) ? 7: 11,
                                    color: cWhite,
                                    // fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          );
  }
}
