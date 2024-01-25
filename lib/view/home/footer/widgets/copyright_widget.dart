import 'package:adv_ks_binu_assosciates/view/colors/colors.dart';
import 'package:flutter/material.dart';

import '../../../../utils/utils/responsive.dart';
import '../../../fonts/google_poppins.dart';


class CopyRightWidget extends StatelessWidget {
  const CopyRightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              GooglePoppinsWidgets(
                text: '©2023. Adv. Shaila Rani Associates. All Rights Reserved',
                fontsize: ResponsiveWebSite.isMobile(context) ? 8 : 15,
                fontWeight: FontWeight.w500,
                color: cWhite,
              ),
                   Padding(
                     padding: const EdgeInsets.only(top: 03),
                     child: GooglePoppinsWidgets(
                                   text: 'Powered  by Lepton Communications',
                                   fontsize: ResponsiveWebSite.isMobile(context) ? 7 : 11,
                                   fontWeight: FontWeight.w300,
                                   color: cWhite,
                                 ),
                   ),
            ],
          )
        ],
      ),
    );
  }
}