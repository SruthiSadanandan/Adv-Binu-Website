import 'package:flutter/material.dart';

import '../../utils/utils/responsive.dart';
import 'home_screen.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWebSite(
          mobile: HomeScreen(), tablet: HomeScreen(), desktop: HomeScreen()),
    );
  }
}
