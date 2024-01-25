import 'package:flutter/material.dart';

import '../../../utils/utils/responsive.dart';
import '../../colors/colors.dart';
import 'widgets/footer_text_wid.dart';


class FooterSectionScreen extends StatelessWidget {
  const FooterSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWebSite.isMobile(context)
          ? 900
          : ResponsiveWebSite.isTablet(context)
              ? 900
              : 400,
      color: cBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResponsiveWebSite.isMobile(context)
              ? const Column(
                  children: [
                    AdvDiscribeWidget(),
                    SpecializationWidget(),
                    NewsLetterWidget()
                  ],
                )
              : ResponsiveWebSite.isTablet(context)
                  ? const Column(
                      children: [
                        AdvDiscribeWidget(),
                        SpecializationWidget(),
                        NewsLetterWidget()
                      ],
                    )
                  : const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AdvDiscribeWidget(),
                        SpecializationWidget(),
                        NewsLetterWidget()
                      ],
                    )
        ],
      ),
    );
  }
}
