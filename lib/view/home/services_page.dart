import 'package:adv_ks_binu_assosciates/utils/utils/responsive.dart';
import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        toolbarHeight: 0,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveWebSite.isDesktop(context)
                ? Row(
                    children: [
                      SizedBox(
                        height: screenSize.height,
                        width: screenSize.width / 2,
                       // color: Colors.red,
                        child: Image.asset(
                          'assets/images/services.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width / 2,
                        height: screenSize.height,
                        child: const SingleChildScrollView(
                          // Don't forget this.
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Text(
                                  "Adv. K S Binu & Associates",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              //... other children
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 30, bottom: 50),
                                child: Text(

                                  "Service\n\n Adv. Mrs. K.S. Binu, with an illustrious career spanning 24 years, has been a stalwart in the legal arena across various courts in the state of Kerala. Her dedication and expertise have made her a renowned name, and she has also served as a legal expert in numerous programs on All India Radio (AIR). At Adv. K.S. Binu & Associates, we take pride in providing comprehensive legal solutions with a focus on Family Court matters, Civil cases, and Criminal proceedings.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      //fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
                      Image.asset(
                        'assets/images/homepage1.jpg',
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: screenSize.width,
                        height: screenSize.height,
                        child:  const SingleChildScrollView(
                          // Don't forget this.
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Text(
                                  "LEPTON COMPANY SOLUTIONS",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 50),
                                child: Text(
                                  "Lepton AI Solutions is at the forefront of technological innovation, specializing in delivering IoT and AI solutions tailored to the unique needs of the Middle East. As a sister concern of Lepton Communications, our legacy of success extends across diverse sectors, including healthcare, education, e-commerce, and social networking.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),           
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
