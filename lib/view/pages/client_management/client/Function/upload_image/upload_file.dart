import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../colors/colors.dart';
import '../../../../../fonts/google_poppins.dart';
import '../../../../../widgets/back_button/back_button_widget.dart';
import '../../../controller/client_controller.dart';



uploadFileForClient(BuildContext context, String docid) {

  // File? imagePath;
  ClientManagementController clientManagementController =
      Get.put(ClientManagementController());

  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GooglePoppinsWidgets(
                text: 'UPLOAD FILE ',
                fontsize: 13,
                fontWeight: FontWeight.w600),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: BackButtonContainerWidget(),
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => clientManagementController.pickFileFunction(format: 'pdf'),
                      child: Container(
                                  height: 32,
                                  width: 150,
                                  decoration: const BoxDecoration(
                                    color: themeColorBlue,
                                  ),
                                  child: Center(
                                    child: GooglePoppinsWidgets(
                                        text: 'U P L O A D',
                                        color: cWhite,
                                        fontsize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                    )
              
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
