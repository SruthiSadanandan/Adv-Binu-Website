
import 'package:adv_ks_binu_assosciates/footer_ajay/about_lepton.dart';
import 'package:adv_ks_binu_assosciates/footer_ajay/aboutus.dart';
import 'package:adv_ks_binu_assosciates/footer_ajay/company.dart';
import 'package:adv_ks_binu_assosciates/footer_ajay/copyright.dart';
import 'package:adv_ks_binu_assosciates/utils/utils/responsive.dart';
import 'package:flutter/material.dart';


class FooterFinalPage extends StatelessWidget {
  const FooterFinalPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ResponsiveWebSite.isDesktop(context)
              ? Container(
                  width: screenSize.width,
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
                    padding: const EdgeInsets.only(
                      top: 50.0,
                    ),
                    child: Column(
                      children: [
                         Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                                height: 350, child: KsbinuContainerWidget()),
                            SizedBox(
                              height: 300,
                              child: CompanyContainerWidget(),
                            ),
                            Container(
                              // color: Colors.red,
                              height: 300,
                              child: ContactUsContainerWidget(),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          color: Colors.black,
                          child: const CopyRightContainerWidget(),
                        ),
                      ],
                    ),
                  ),
                )
              : ResponsiveWebSite.isTablet(context)
                  ? Container(
                      width: screenSize.width,
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
                        padding: const EdgeInsets.only(
                          top: 30.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                                height: 220,
                                width: 400,
                                child: Center(child: KsbinuContainerWidget())),
                            const SizedBox(
                              height: 350,
                              width: 400,
                              child: Center(child: CompanyContainerWidget()),
                            ),
                            const SizedBox(
                              height: 450,
                              width: 400,
                              child: Center(child: ContactUsContainerWidget()),
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              color: Colors.black,
                              child: const CopyRightContainerWidget(),
                            ),
                          ],
                        ),
                      ),
                    )
                  : ResponsiveWebSite.isMobile(context)
                      ? Container(
                          width: screenSize.width,
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
                            padding: const EdgeInsets.only(
                              top: 20.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                    height: 200,
                                    width: 400,
                                    child:
                                        Center(child: KsbinuContainerWidget())),
                                const SizedBox(
                                  height: 350,
                                  width: 400,
                                  child:
                                      Center(child: CompanyContainerWidget()),
                                ),
                                const SizedBox(
                                  height: 250,
                                  width: 400,
                                  child:
                                      Center(child: ContactUsContainerWidget()),
                                ),
                                Container(
                                  height: 80,
                                  width: double.infinity,
                                  color: Colors.black,
                                  child: const CopyRightContainerWidget(),
                                ),
                              ],
                            ),
                          ),
                        )
                      : const Column(),
        ],
      ),
    );
  }
}
