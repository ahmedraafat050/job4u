import 'package:flutter/material.dart';
import 'package:job4u/pages/apply/toptalApply.dart';
import 'package:job4u/pages/homePage.dart';
import 'package:job4u/services/colors.dart';

class Toptal extends StatelessWidget {
  const Toptal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Toptal",
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
                "About The Job",
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
                "Toptal developers work with speed and efficiency to deliver the highest quality of work. We are looking for someone who is passionate about their client’s business, and ready to work on exciting projects with Fortune 500 companies and Silicon Valley startups, with great rates and zero hassles. If you are looking for a place to advance your career, enhance your skill set, and build connections around the globe, Toptal is right for you.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: Text(
                "About Toptal",
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
                "Toptal is an exclusive network of top freelancers from around the world. Fortune 500 companies and Silicon Valley startups hire Toptal for their most important projects. Toptal is one of the fastest-growing fully remote networks and empowers freelance software developers, designers, finance experts, product managers, and project managers worldwide to grow and excel in their freelance careers.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                "Toptal clients vary in sizes and industries, from enterprise organizations and big tech companies to Silicon Valley startups and renowned universities. Once you enter the network, our matchers will contact you with project opportunities that fit your expertise and preferences. We have experts in over 120 countries who get to work remotely on projects that meet their career ambitions.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: Text(
                "About The Role",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 95, 95, 95),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "We are looking for a great Go developer who has a strong understanding of how best to leverage and exploit the language’s unique paradigms, idioms, and syntax. Your primary focus will be on developing Go packages and programs that are scalable and maintainable. You will ensure that these Go packages and programs are well documented and have reasonable test coverage. A commitment to collaborative problem solving, sophisticated design, and quality product is essential.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "If you’re interested in pursuing an engaging career working on full-time freelance jobs for exclusive clients, take the next step by clicking apply and filling out the short form to get started.",
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
                            builder: (context) => const ToptalApply()));
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
