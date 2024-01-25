import 'package:adv_ks_binu_assosciates/utils/utils/responsive.dart';
import 'package:adv_ks_binu_assosciates/view/fonts/google_poppins.dart';
import 'package:flutter/material.dart';

class WhoWeAre extends StatelessWidget {
  const WhoWeAre({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        toolbarHeight: 0,
      ),
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
                          'assets/images/lady_justice.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width / 2,
                        height: screenSize.height,
                        child: SingleChildScrollView(
                          // Don't forget this.
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Text(
                                  "Mrs. Adv. K S Binu & Associates",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              //... other children
                              Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    top: 30,
                                  ),
                                  child: WhoWeAreContainerWidget(
                                    text1: 'Expertise',
                                    text2:
                                        'With over two decades of legal practice, Adv. K.S. Binu brings a wealth of knowledge to the table. Her experience and proficiency in different courts across Kerala make her a trusted legal advisor.',
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    top: 30,
                                  ),
                                  child: WhoWeAreContainerWidget(
                                    text1: 'Legal Solutions Tailored for You: ',
                                    text2:
                                        'Understanding that every case is unique, our dynamic team works closely with clients to tailor legal strategies that best suit their specific needs and circumstances.',
                                  )),
                                     Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    top: 30,
                                  ),
                                  child: WhoWeAreContainerWidget(
                                    text1: 'Compassionate Approach',
                                    text2:
                                        'We recognize the emotional challenges that often accompany legal issues. Our team provides empathetic and understanding support, ensuring that clients feel heard and supported throughout the legal process.',
                                  )),
                                    Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    top: 30,
                                  ),
                                  child: WhoWeAreContainerWidget(
                                    text1: ' Results-Driven',
                                    text2:
                                        'At Adv. K.S. Binu & Associates, our primary focus is achieving favorable outcomes for our clients. Whether through negotiation, mediation, or litigation, we are committed to securing the best possible results.',
                                  )),
                                  Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    top: 30,
                                  ),
                                  child: WhoWeAreContainerWidget(
                                    text1: 'Contact Us',
                                    text2:
                                        "When legal matters arise, don't navigate them alone. Contact Adv. K.S. Binu & Associates for reliable, experienced, and dedicated legal representation. Your peace of mind is our priority.",
                                  )),
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
                        'assets/images/solution.jpg',
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: screenSize.width,
                        height: screenSize.height,
                        child: const SingleChildScrollView(
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

class WhoWeAreContainerWidget extends StatelessWidget {
  WhoWeAreContainerWidget({
    required this.text1,
    required this.text2,
    super.key,
  });
  String text1;
  String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GooglePoppinsWidgets(
          text: text1,
          fontsize: 16,
          fontWeight: FontWeight.bold,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: GooglePoppinsWidgets(
            text: text2,
            fontsize: 14,
          ),
        ),
      ],
    ));
  }
}
