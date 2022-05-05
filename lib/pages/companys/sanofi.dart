import 'package:flutter/material.dart';
import 'package:job4u/pages/apply/sanofiApply.dart';
import 'package:job4u/pages/homePage.dart';
import 'package:job4u/services/colors.dart';

class Sanofi extends StatelessWidget {
  const Sanofi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Sanofi",
          style: TextStyle(
            fontFamily: "Righteous",
            color: secColor,
            fontSize: 28,
          ),
        ),
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: Text(
                "JOB PURPOSE:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Receives all claims and requests from the customers. Registers them in different business tools and tracking sheets, classifies them according to the classification matrix and assigns them to the relevant specialist (in Customer Service or CI2C teams) to analyze, investigate and resolve within fixed service level target and targeting the highest first call resolution rate. Coordinates with other functions to solve issues when necessary, communicating with Customer Facing when returning with the proper answer to Customers. Managing all invoices through E-invoice portal.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: Text(
                "KEY RESPONSIBILITIES AND TASKS:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "• Issue the customer sales invoices for local markets as per the selling confirmed prices recorded on the system after assuring the physical goods dispatch from Sanofi locations Assure full compliance of the application of E- Invoicing through middle wear & Tax portal.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "• Follow up on customers returns and assure the financial recording for the values along with issuing the credit notes related to the goods",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "• Review and approve on weekly basis the transportation claims received from the customers after confirming the number of trips per destination and inline with the agreed rate cards",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "• Confirm balances with customers monthly for all transportation activities values along with Credit notes as per the month actuals",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "• Report daily the sales tracking to Trade and revenue and Supply chain showing any delay in trend that might affect the achievement of month targets",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "• Maintain the documentation of the telephone system configuration and all MPT lines",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "• Work closely with customers on their claims value and resolve any issue related to their claims in term of volume or value inline with the commercial policy and internal controls",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "• Confirm sanofi acceptance or rejection of claims and lead the execution till settlement",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "• Responsible for the monthly sales recognition in line with Sanofi global guidelines, the local accounting practices, and customer term of sales",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "• Issuing all Sanofi SI invoices for hospital & Retail customers",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "At Sanofi diversity and inclusion is foundational to how we operate and embedded in our Core Values. We recognize to truly tap into the richness diversity brings we must lead with inclusion and have a workplace where those differences can thrive and be leveraged to empower the lives of our colleagues, patients and customers. We respect and celebrate the diversity of our people, their backgrounds and experiences and provide equal opportunity for all",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SanofiApply()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: mainColor,
                    minimumSize: const Size(
                      60,
                      60,
                    ),
                  ),
                  child: Text(
                    "Apply Now",
                    style: TextStyle(
                      color: secColor,
                      fontSize: 21,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
