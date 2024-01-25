// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/widgets.dart';

import '../../../fonts/google_poppins.dart';

class HeaderRowTextWidgetClient extends StatelessWidget {
  String title;

  HeaderRowTextWidgetClient({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Center(
          child: GooglePoppinsWidgets(
        text: title,
        textAlign: TextAlign.center,
        fontsize: 12,
        fontWeight: FontWeight.w600,
      )),
    );
  }
}