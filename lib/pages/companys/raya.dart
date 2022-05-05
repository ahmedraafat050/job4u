import 'package:flutter/material.dart';
import 'package:job4u/pages/apply/rayaApply.dart';
import 'package:job4u/pages/homePage.dart';

import '../../services/colors.dart';

class Raya extends StatelessWidget {
  const Raya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "RAYA",
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
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Aman Taqa; a subsidiary of Raya Holding for Financial Investments is looking to hire Research Associate with the below job responsibilities and qualifications:",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: Text(
                "Key job responsibilities:",
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
                "Building basic economic models, writing research reports, conducting macroeconomic analysis on the national/regional Fin/Tech landscape, communicating our team's ideas to stake-holders and working with the team to identify trends in the space.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Expand the team’s bandwidth, bringing additional data visualization and abstraction expertise and ideas",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Maintain our Opportunity Hopper and support the enhancement of our reporting suite",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Using discretion and judgment, elevate critical news and reports or time-sensitive information to management/stakeholders.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Attend and report on corporate events, roadshows, company presentations, summarizing and communicating findings to the team and work on special projects to support a broad range of business needs",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Learn and apply new capabilities in data sets, charts, dashboards, etc.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Prepare internal presentations and summaries of business progression and deliveries.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Help write thematic sector and company research reports.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Advance your capabilities and skills in financial acumen, accounting, technical capabilities, and tools.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Perform value-add analysis and interpret data on market and economic events to identify and describe trends",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Reviewing and organizing data, synthesizing information, and conducting analysis, with direction from coach/line manager.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "A degree in computer science, mathematics, statistics, engineering, finance, or a relevant major",
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
                            builder: (context) => const RayaApply()));
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
