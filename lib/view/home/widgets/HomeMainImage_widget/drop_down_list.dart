import 'package:adv_ks_binu_assosciates/view/colors/colors.dart';
import 'package:adv_ks_binu_assosciates/view/fonts/google_poppins.dart';
import 'package:flutter/material.dart';
import 'package:joy_dropdowns/joy_dropdowns.dart';

import '../../../../utils/utils/responsive.dart';
import '../hover_mouse/hover_text.dart';


class ServicesDropDownList extends StatelessWidget {
  const ServicesDropDownList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return JoyDropDown(
      overlayHeight: 630,
      overlayWidth: 250,
      overlayOffset: const Offset(0, 5),
      overlayPosition: JoyOverlayPosition.bottom,
      overlayWidget: Container(
        decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(0.3),
        ),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: sevicesList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: GooglePoppinsWidgets(
                        text: "•   ${sevicesList[index]}",
                        fontsize: 10,
                        fontWeight: FontWeight.w200,
                        color: cWhite,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 200,
                  child: Column(
                    children: [
                      Center(
                        child: GooglePoppinsWidgets(
                            text: "Counselling",
                            fontsize: 12,
                            color: cWhite,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 03),
                        child: Container(
                          height: 0.5,
                          width: 30,
                          color: cWhite,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: counsellingList.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: GooglePoppinsWidgets(
                                  text: "•   ${counsellingList[index]}",
                                  fontsize: 10,
                                  fontWeight: FontWeight.w200,
                                  color: cWhite,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      child: OnHoverTextForHeader(builder: (isHoverd) {
        final colorr =
            isHoverd ? const Color.fromARGB(255, 192, 145, 128) : cWhite;
        return Center(
          child: GooglePoppinsWidgets(
            text: "Services",
            fontsize: 12,
            color: colorr,
          ),
        );
      }),
    );
  }
}

serivesdropDownList(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: cBlack,
        title: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                height: 30,
                width: ResponsiveWebSite.isMobile(context) ? 40 : 70,
                decoration: BoxDecoration(
                  border: Border.all(color: cWhite),
                ),
                child: Center(
                  child: GooglePoppinsWidgets(
                    text: 'Back',
                    fontsize: ResponsiveWebSite.isMobile(context) ? 08 : 11,
                    color: cWhite,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: ResponsiveWebSite.isMobile(context) ? 20 : 50),
              child: GooglePoppinsWidgets(
                text: 'Our Services',
                fontsize: ResponsiveWebSite.isMobile(context) ? 14 : 15,
                color: cWhite,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        content: ResponsiveWebSite.isMobile(context)
            ? Column(
                children: [
                  Container(
                    height: 400,
                    width: 400,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: sevicesList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: GooglePoppinsWidgets(
                            text: "•  ${sevicesList[index]}",
                            fontsize: 12,
                            fontWeight: FontWeight.w200,
                            color: cWhite,
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 200,
                      width: 400,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Center(
                              child: GooglePoppinsWidgets(
                                  text: "Counselling",
                                  fontsize: 12,
                                  color: cWhite,
                                  fontWeight: FontWeight.w500),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 03),
                              child: Container(
                                height: 0.5,
                                width: 20,
                                color: cWhite,
                              ),
                            ),
                            SizedBox(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: counsellingList.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: GooglePoppinsWidgets(
                                      text: "•   ${counsellingList[index]}",
                                      fontsize: 10,
                                      fontWeight: FontWeight.w200,
                                      color: cWhite,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Row(
                children: [
                  Container(
                    height: 400,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: sevicesList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: GooglePoppinsWidgets(
                            text: "•  ${sevicesList[index]}",
                            fontsize: 12,
                            fontWeight: FontWeight.w200,
                            color: cWhite,
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 400,
                      width: 200,
                      child: Column(
                        children: [
                          Center(
                            child: GooglePoppinsWidgets(
                                text: "Counselling",
                                fontsize: 12,
                                color: cWhite,
                                fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 03),
                            child: Container(
                              height: 0.5,
                              width: 20,
                              color: cWhite,
                            ),
                          ),
                          SizedBox(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: counsellingList.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: GooglePoppinsWidgets(
                                    text: "•   ${counsellingList[index]}",
                                    fontsize: 10,
                                    fontWeight: FontWeight.w200,
                                    color: cWhite,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
        actions: <Widget>[
          TextButton(
            child: const Text('ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

List<String> sevicesList = [
  'Criminal Law',
  'Divorce Attorneys',
  'Document Verification',
  'Domestic Violence',
  'Labour Laws',
  'Legal Advice',
  'Legal Studies',
  'Marriage Law',
  'Money Suits',
  'Mutual Divorce',
  'Personal Laws',
  'Property Dispute',
  'Registration of Documents',
  'Workmen Compensation',
  'Landlord and tenant litigation',
  'Civil rights litigation',
  'Accident Claims Cases',
  'Alternate Dispute Resolution',
  'Anticipatory Bail',
  'Boundary Disputes',
  'Cheque Cases',
  'Children Custody',
  'Civil Cases',
  'Commercial Laws',
  'Consumer Protection Cases',
  'Contested Divorce',
];

List<String> counsellingList = [
  'Pre-Marital Counselling',
  'Post-Marital Counselling',
  'Child Counselling',
  'Family Counselling'
];
