import 'package:flutter/material.dart';
import 'package:job4u/pages/apply/ultra_targeting.dart';
import 'package:job4u/pages/homePage.dart';
import 'package:job4u/services/colors.dart';

class Ultra_Targeting extends StatelessWidget {
  const Ultra_Targeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Ultra Targeting",
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
                "Webmaster is needed for:",
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
                "Building and testing aesthetic, functional, and user-friendly websites.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Coordinating with designers, content providers, and management or business owners.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Implementing and ensuring website security and data protection.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Maintaining, updating, and optimizing servers.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Monitoring and analyzing site performance.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Updating website content and reviewing SEO.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Addressing and responding to user comments and complaints.",
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
                            builder: (context) =>
                                const Ultra_targetingApply()));
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
