import 'package:flutter/material.dart';
import 'package:job4u/pages/searchPage.dart';
import 'package:job4u/pages/sections/DoctorSection.dart';
import 'package:job4u/pages/sections/EducationSection.dart';
import 'package:job4u/pages/sections/EngineeringSection.dart';
import 'package:job4u/pages/sections/GraphicSections.dart';
import 'package:job4u/pages/sections/LawSection.dart';
import 'package:job4u/pages/sections/ServiceSection.dart';
import 'package:job4u/pages/sections/businessSection.dart';
import 'package:job4u/pages/sections/marktingSection.dart';
import 'package:job4u/pages/sections/programmingSection.dart';
import 'package:job4u/pages/sections/scienceSection.dart';
import 'package:job4u/services/colors.dart';
import 'package:job4u/services/sectionsItem.dart';

class Sections extends StatelessWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      appBar: AppBar(
        actions: [
          IconButton(
            color: secColor,
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),
        ],
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Get Job",
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
            children: [
              sectionItem(
                image: 'assets/images/programming.png',
                sectionName: 'Programming',
                moveTo: const programmingSection(),
              ),
              sectionItem(
                image: 'assets/images/digital-marketing.png',
                sectionName: 'Markting',
                moveTo: const marktingSection(),
              ),
              sectionItem(
                image: 'assets/images/chemistry.png',
                sectionName: 'Health Science',
                moveTo: const scienceSection(),
              ),
              sectionItem(
                image: 'assets/images/finance.png',
                sectionName: 'Business',
                moveTo: const businessSection(),
              ),
              sectionItem(
                image: 'assets/images/web-design.png',
                sectionName: 'Graphic Design',
                moveTo: const GraphicSection(),
              ),
              sectionItem(
                image: 'assets/images/presentation.png',
                sectionName: 'Education',
                moveTo: const EducationSection(),
              ),
              sectionItem(
                image: 'assets/images/compliant.png',
                sectionName: 'Law',
                moveTo: const lawSection(),
              ),
              sectionItem(
                image: 'assets/images/engineering.png',
                sectionName: 'Engineering',
                moveTo: const EngineeringSection(),
              ),
              sectionItem(
                image: 'assets/images/medical-team.png',
                sectionName: 'Medical Team',
                moveTo: const DoctorSection(),
              ),
              sectionItem(
                image: 'assets/images/report.png',
                sectionName: 'Service Industry',
                moveTo: const ServiceSection(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
