import 'package:adv_ks_binu_assosciates/utils/utils/responsive.dart';
import 'package:adv_ks_binu_assosciates/view/fonts/google_poppins.dart';
import 'package:flutter/material.dart';


class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

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
                          'assets/images/contacts.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width / 2,
                        height: screenSize.height,
                        child:   SingleChildScrollView(
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
                                    left: 20, right: 20, top: 10, bottom: 10),
                               child:
                                 Contacts(text1: 'Adress', text2: 'Mrs,K.S.Binu,office at P&P  arcade, near Gandhi jn, Kottarakara.Kollam,District.', icon:  const Icon(Icons.location_on))
                              ),
                                Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 10, bottom: 10),
                               child:
                                 Contacts(text1: 'Phone ', text2: '+91-9746315509', icon:  const Icon(Icons.call))
                              ),
                               Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 10, bottom: 10),
                               child:
                                 Contacts(text1: 'Email', text2: 'info@advksbinuassociates.com, advksbinuassociates@gmail.com', icon:  const Icon(Icons.email))
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
                        'assets/images/solution.jpg',
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: screenSize.width,
                        height: screenSize.height,
                        child:  SingleChildScrollView(
                          // Don't forget this.
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Text(
                                  "Adv. K S Binu & Associates",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 50),
                                child: Contacts(text1: 'Adress', text2: 'Mrs,K.S.Binu,office at P&P  arcade,\n near Gandhi jn,\n Kottarakara.Kollam,District.', icon: const Icon(Icons.location_on),)
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
class Contacts extends StatelessWidget {
  Contacts({
    required this.text1,
    required this.text2,
    required this.icon,
    super.key,
  });
  String text1;
  String text2;
  Icon icon; 

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
icon,
        GooglePoppinsWidgets(
          text: text1,
          fontsize: 14,
          fontWeight: FontWeight.bold,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
             left: 10
            ),
            child: GooglePoppinsWidgets(
              text: text2,
              fontsize: 14,
            ),
          ),
        ),
      ],
    ));
  }
}
