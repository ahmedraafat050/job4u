import 'package:flutter/material.dart';
import 'package:job4u/pages/apply/ericssonApply.dart';
import '../../services/colors.dart';


class Ericsson extends StatelessWidget {
  const Ericsson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Ericsson",
          style: TextStyle(
            fontFamily: "Righteous",
            color: secColor,
            fontSize: 28,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: Text(
                  "About This Opportunity",
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
                  "Ericsson is looking for a Key Account Manager (KAM) heading our business and operations towards Telecom Operator, to be based in Cairo. The successful candidate will be part of the Customer Unit STC, Saudi Arabia and Egypt leadership team and its transformation Journey. Through critical thinking, business development and leadership you will enable a responsible and profitable business for Ericsson.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "This role depends upon a deep understanding of our customers’ business, operations, and objectives. In this role, you will be responsible for account P&L, consolidated customer operations and leading a cross-functional team with a purpose of delighting our customer.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "We are searching for a sales executive that will act with confidence, develop the business, and ensure compliance to Ericsson Ways of Working.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: Text(
                  "What You Will Do",
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
                  "Develop an account growth strategy addressing customer needs and growth ambitions",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Work with customer technology and procurement organizations, influencing both technology agenda and commercial ambition",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Be responsible for operational governance",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Be accountable for compliance and process adherence",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Ensure Ericsson Compliance framework is implemented and adhered to",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Be responsible for operational governance",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Identify responsible business opportunities",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Identify customer business needs through consultative engagements",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Generate profitability sales and develop long term business",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Improve customer relationship and build dedication",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Ensure quality and profitability in delivery",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Lead and develop a stellar sales team",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: Text(
                  "You will bring",
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
                  "At Ericsson, you´ll have an outstanding opportunity. The chance to use your skills and inspiration to push the boundaries of what´s possible. To build never seen before solutions to some of the world’s toughest problems. You´ll be challenged, but you won’t be alone. You´ll be joining a team of diverse innovators, all driven to go beyond the status quo to craft what comes next.",
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
                              builder: (context) => const EricssonApply()));
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
        ],
      ),
    );
  }
}
