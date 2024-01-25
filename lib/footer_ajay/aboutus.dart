import 'package:adv_ks_binu_assosciates/utils/utils/responsive.dart';
import 'package:adv_ks_binu_assosciates/view/widgets/primary_font_widget.dart';
import 'package:flutter/material.dart';


class ContactUsContainerWidget extends StatelessWidget {
  const ContactUsContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveWebSite.isDesktop(context)
            ? Row(
              children: [
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
              ],
            )
            : Column(
              children: [
                

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30, bottom: 20),
                        child: PrimaryFontWidget(
                            text: "Contact Us",
                            fontSize: 15,
                            fontweight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 5.0, left: 20, top: 5),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  'assets/images/ksbinulogo.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: PrimaryFontWidget(
                                    text: "Adv.K S Binu & Associates",
                                    fontSize: 13,
                                    fontweight: FontWeight.w500,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 5.0, left: 20, top: 5,bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 18.0,
                                width: 18.0,
                                // color: Colors.transparent,
                                child: IconButton(
                                  padding: EdgeInsets.all(0.0),
                                  color: Colors.white,
                                  icon: Icon(Icons.location_on_sharp, size: 18.0,color: Colors.white,),
                                  onPressed: null,
                                )),
                            // Icon(
                            //   Icons.location_on_sharp,
                            //   color: Colors.white,
                            // ),
                            SizedBox(
                              width: 5,
                            ),
                            PrimaryFontWidget(
                                text:
                                    'Mrs,K.S.Binu,office at P&P  arcade,\n near Gandhi jn,\n Kottarakara.Kollam,District.',
                                fontSize: 12,
                                fontweight: FontWeight.w400,
                                color: Colors.white)
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 5.0, left: 20, top: 5,bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 18.0,
                                width: 18.0,
                                // color: Colors.transparent,
                                child: IconButton(
                                  padding: EdgeInsets.all(0.0),
                                  color: Colors.white,
                                  icon: Icon(Icons.phone, size: 18.0,color: Colors.white,),
                                  onPressed: null,
                                )),
                            SizedBox(
                              width: 5,
                            ),
                            PrimaryFontWidget(
                                text: '+91-9746315509',
                                fontSize: 12,
                                fontweight: FontWeight.w400,
                                color: Colors.white)
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 5.0, left: 20, top: 5,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 18.0,
                                width: 18.0,
                                // color: Colors.transparent,        
                                child: IconButton(
                                  padding: EdgeInsets.all(0.0),
                                  color: Colors.white,
                                  icon: Icon(Icons.mail, size: 18.0,color: Colors.white,),
                                  onPressed: null,
                                )),
                            SizedBox(
                              width: 5,
                            ),
                            PrimaryFontWidget(
                                text:
                                    'info@advksbinuassociates.com,\nadvksbinuassociates@gmail.com',
                                fontSize: 11,
                                fontweight: FontWeight.w400,
                                color: Colors.white)
                          ],
                        ),
                      ),
                    ],
                  ),
              ],
            ),
      ],
    );
  }
}
