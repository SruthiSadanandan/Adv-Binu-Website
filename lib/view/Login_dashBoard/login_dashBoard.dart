import 'package:flutter/material.dart';

import '../../utils/utils/responsive.dart';
import 'dashB_Home_screen.dart';


class LoginDashBoard extends StatelessWidget {
  const LoginDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveWebSite(
          mobile: DashBoardHomeScreen(

          ),
          tablet: DashBoardHomeScreen(

          ),
          desktop: DashBoardHomeScreen(
      
          )),
    );
  }
}
