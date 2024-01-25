import 'package:adv_ks_binu_assosciates/utils/utils/responsive.dart';
import 'package:adv_ks_binu_assosciates/view/widgets/primary_font_widget.dart';
import 'package:flutter/material.dart';


class CompanyContainerWidget extends StatelessWidget {
  const CompanyContainerWidget({
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
                    padding: EdgeInsets.only(bottom: 10),
                    child: PrimaryFontWidget(
                        text: "Adv. Mrs. K S Binu & Associates",
                        fontSize: 18,
                        fontweight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.arrow_forward_ios),
                      TextButton(
                          onPressed: () {},
                          child: const PrimaryFontWidget(
                              text: 'Home',
                              fontSize: 13,
                              fontweight: FontWeight.w500,
                              color: Colors.white)),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.arrow_forward_ios),
                      TextButton(
                          onPressed: () {},
                          child: const PrimaryFontWidget(
                              text: 'About Us',
                              fontSize: 13,
                              fontweight: FontWeight.w500,
                              color: Colors.white)),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.arrow_forward_ios),
                      TextButton(
                          onPressed: () {},
                          child: const PrimaryFontWidget(
                              text: 'Services',
                              fontSize: 13,
                              fontweight: FontWeight.w500,
                              color: Colors.white)),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.arrow_forward_ios),
                      TextButton(
                          onPressed: () {},
                          child: const PrimaryFontWidget(
                              text: 'Contacts',
                              fontSize: 13,
                              fontweight: FontWeight.w500,
                              color: Colors.white)),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.arrow_forward_ios),
                      TextButton(
                          onPressed: () {},
                          child: const PrimaryFontWidget(
                              text: 'Videos',
                              fontSize: 13,
                              fontweight: FontWeight.w500,
                              color: Colors.white)),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.arrow_forward_ios),
                      TextButton(
                          onPressed: () {},
                          child: const PrimaryFontWidget(
                              text: 'Articles',
                              fontSize: 13,
                              fontweight: FontWeight.w500,
                              color: Colors.white)),
                    ],
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30, bottom: 20),
                    child: PrimaryFontWidget(
                        text: "Adv. Mrs. K S Binu & Associates",
                        fontSize: 15,
                        fontweight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const SizedBox(
                            height: 18.0,
                            width: 18.0,
                            // color: Colors.transparent,
                            child: Icon(Icons.arrow_forward_ios, size: 18.0),
                            // IconButton(
                            //   padding: EdgeInsets.all(0.0),
                            //   // color: Colors.white,
                            //   icon: Icon(Icons.arrow_forward_ios, size: 18.0),
                            //   onPressed: null,
                            // )
                            ),
                        TextButton(
                            onPressed: () {},
                            child: const PrimaryFontWidget(
                                text: 'Home',
                                fontSize: 13,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const SizedBox(
                            height: 18.0,
                            width: 18.0,
                            // color: Colors.transparent,
                            child:Icon(Icons.arrow_forward_ios, size: 18.0),
                            //  IconButton(
                            //   padding: EdgeInsets.all(0.0),
                            //   // color: Colors.white,
                            //   icon: Icon(Icons.arrow_forward_ios, size: 18.0),
                            //   onPressed: null,
                            // )
                            ),
                        TextButton(
                            onPressed: () {},
                            child: const PrimaryFontWidget(
                                text: 'About Us',
                                fontSize: 13,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const SizedBox(
                            height: 18.0,
                            width: 18.0,
                            // color: Colors.transparent,
                            child:Icon(Icons.arrow_forward_ios, size: 18.0),
                            //  IconButton(
                            //   padding: EdgeInsets.all(0.0),
                            //   // color: Colors.white,
                            //   icon: Icon(Icons.arrow_forward_ios, size: 18.0),
                            //   onPressed: null,
                            // )
                            ),
                        TextButton(
                            onPressed: () {},
                            child: const PrimaryFontWidget(
                                text: 'Services',
                                fontSize: 13,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const SizedBox(
                            height: 18.0,
                            width: 18.0,
                            // color: Colors.transparent,
                            child: Icon(Icons.arrow_forward_ios, size: 18.0),
                            // IconButton(
                            //   padding: EdgeInsets.all(0.0),
                            //   // color: Colors.white,
                            //   icon: Icon(Icons.arrow_forward_ios, size: 18.0),
                            //   onPressed: null,
                            // )
                            ),
                        TextButton(
                            onPressed: () {},
                            child: const PrimaryFontWidget(
                                text: 'Videos',
                                fontSize: 13,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const SizedBox(
                            height: 18.0,
                            width: 18.0,
                            // color: Colors.transparent,
                            child:Icon(Icons.arrow_forward_ios, size: 18.0),
                            //  IconButton(
                            //   padding: EdgeInsets.all(0.0),
                            //   // color: Colors.white,
                            //   icon: Icon(Icons.arrow_forward_ios, size: 18.0),
                            //   onPressed: null,
                            // )
                            ),
                        TextButton(
                            onPressed: () {},
                            child: const PrimaryFontWidget(
                                text: 'Articles',
                                fontSize: 13,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const SizedBox(
                            height: 18.0,
                            width: 18.0,
                            // color: Colors.transparent,
                            child: Icon(Icons.arrow_forward_ios, size: 18.0),
                            // IconButton(
                            //   padding: EdgeInsets.all(0.0),
                            //   // color: Colors.white,
                            //   icon: Icon(Icons.arrow_forward_ios, size: 18.0),
                            //   onPressed: null,
                            // )
                            ),
                        TextButton(
                            onPressed: () {},
                            child: const PrimaryFontWidget(
                                text: 'Contacts',
                                fontSize: 13,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
