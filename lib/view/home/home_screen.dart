import 'package:adv_ks_binu_assosciates/utils/utils/responsive.dart';
import 'package:adv_ks_binu_assosciates/view/colors/colors.dart';
import 'package:adv_ks_binu_assosciates/view/home/app_bar/app_bar.dart';
import 'package:adv_ks_binu_assosciates/view/home/footer/footer.dart';
import 'package:adv_ks_binu_assosciates/view/home/footer/widgets/copyright_widget.dart';
import 'package:adv_ks_binu_assosciates/view/home/widgets/HomeMainImage_widget/homeImage_section_widget.dart';
import 'package:adv_ks_binu_assosciates/view/home/widgets/details_contact_container_widget/details_contact_container.dart';
import 'package:adv_ks_binu_assosciates/view/home/widgets/home_page_mobile.dart';
import 'package:adv_ks_binu_assosciates/view/home/widgets/home_page_web_n_tab.dart';
import 'package:adv_ks_binu_assosciates/view/home/widgets/our_practices_widget/our_pratices_widget.dart';
import 'package:adv_ks_binu_assosciates/view/home/widgets/our_team_container_widget/our_Team_container.dart';
import 'package:adv_ks_binu_assosciates/view/home/widgets/shaila_rani_ReadMore_widger/shaila_rani_ReadMore.dart';
import 'package:flutter/material.dart';

import 'widgets/video_section/video_sec_Container.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ResponsiveWebSite.isMobile(context)? HomePageMobile() :  HomePageWebAndTAB(),
    );
  }
}

List<String> persionPhotos = [
  'assests/images/persion_4.jpeg',
  'assests/images/persion_2.jpeg',
  'assests/images/persion_1.jpeg',
  'assests/images/persion_3.jpeg',
];
List<String> persion_text = [''];

List<String> headerText = [
  'Home',
  'About',
  'Sevices',
];
