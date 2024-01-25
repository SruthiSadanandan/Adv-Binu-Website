import 'package:adv_ks_binu_assosciates/view/colors/colors.dart';
import 'package:adv_ks_binu_assosciates/view/pages/article_management/article_management.dart';
import 'package:flutter/material.dart';

import 'package:sidebar_drawer/sidebar_drawer.dart';

import '../../features/video_management/presentation/pages/video_management_home_screen.dart';
import '../pages/client_management/client/client_page.dart';
import '../pages/staff_management/staff_screen.dart';
import 'side_menuBar/is_desktop.dart';
import 'side_menuBar/widget/costecDujologo.dart';

// ignore: must_be_immutable
class DashBoardHomeScreen extends StatefulWidget {
  const DashBoardHomeScreen({super.key});

  @override
  State<DashBoardHomeScreen> createState() => _DashBoardHomeScreenState();
}

class _DashBoardHomeScreenState extends State<DashBoardHomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SidebarDrawer(
        body: ListView(
          children: [
            AppBar(
              backgroundColor: cWhite,
              leading: const DrawerIcon(),
            ),
            pages[selectedIndex]
          ],
        ),
        drawer: ListView(children: [
          const CostechDujoLogoWidget(),
          SideBarMenuItemsWidget(
            selectedIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ]),
      ),
    );
  }
}

List<Widget> pages = [
  StaffHomeScreen(),
  const ClientDetailsScreen(),
  const VideoManageMentHomeScreen(),
 ArticleScreen()
];
