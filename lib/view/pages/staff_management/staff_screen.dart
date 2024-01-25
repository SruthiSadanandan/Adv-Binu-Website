// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:adv_ks_binu_assosciates/view/fonts/google_poppins.dart';
import 'package:adv_ks_binu_assosciates/view/pages/staff_management/employee_list_screen.dart';
import 'package:adv_ks_binu_assosciates/view/pages/staff_management/functions/create_employee/create_employee.dart';
import 'package:adv_ks_binu_assosciates/view/pages/staff_management/widget/headerText_widget.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../colors/colors.dart';
import '../../controller/dashboard_Controllers.dart';
import 'functions/arrange_priority/arrange_priority.dart';


class StaffHomeScreen extends StatelessWidget {
  DashBoardControllers dashBoardControllers = Get.put(DashBoardControllers());

    StaffHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 850,
      color: cGrey.withOpacity(0.1),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: GooglePoppinsWidgets(
                          text: 'EMPLOYEES DETAILS',
                          fontsize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: GestureDetector(
                        onTap: () => createEmployee(context),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: cBlue),
                          height: 40,
                          width: 140,
                          child: Center(
                            child: GooglePoppinsWidgets(
                              text: 'Create Employee',
                              fontsize: 12,
                              color: cWhite,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    onTap: (){
                      arrangeStaffPriority(context);
                    },
                    child: Container(
                      height: 30,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: themeColorBlue,
                      ),
                      child: Center(
                        child: GooglePoppinsWidgets(
                            text: 'Arrange Priority',
                            color: cWhite,
                            fontsize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                color: cWhite,
                child:  Column(
                  children: [
                    EmployeeListHeaderWidget(), // DropDown --- Active List / In Active
                    const ListOFStaffScreen()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class EmployeeListHeaderWidget extends StatelessWidget {
  DashBoardControllers dashBoardControllers = Get.put(DashBoardControllers());
   EmployeeListHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                child: SizedBox(
                    height: 40,
                    width: 200,
                    child: DropdownSearch(
                      onChanged: (value) async {
                         dashBoardControllers.staffActiveORInActiveValue.value=value!;
                        log('Getx Controller ${Get.find<DashBoardControllers>().staffActiveORInActiveValue.value}');
                        // Navigator.pushReplacement(context, MaterialPageRoute(
                        //   builder: (context) {
                        //     return const LoginDashBoard();
                        //   },
                        // ));
                      },
                      selectedItem: dashBoardControllers.staffActiveORInActiveValue.value,
                      items: const ['Active', 'InActive'],
                    )),
              ),
            ],
          ), //
          Container(
            height: 45,
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                border: Border.all(color: cGrey)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: HeaderRowTextWidget(
                    title: 'No',
                  ),
                ),
                HeaderRowTextWidget(
                  title: clientSecTe[5],
                ),
                HeaderRowTextWidget(
                  title: clientSecTe[0],
                ),
                HeaderRowTextWidget(
                  title: clientSecTe[1],
                ),
                HeaderRowTextWidget(
                  title: clientSecTe[2],
                ),
                HeaderRowTextWidget(
                  title: clientSecTe[3],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: HeaderRowTextWidget(
                    title: clientSecTe[4],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<String> clientSecTe = [
  'Employee Name',
  'Assigned Roles',
  'Mobile No',
  'Email Id',
  'Date of Joining',
  'Employee ID',
];
