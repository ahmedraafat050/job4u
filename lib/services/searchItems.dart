import 'package:flutter/material.dart';
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

class section {
  final String title;
  final String image;
  var url;

  section({
    required this.title,
    required this.image,
    required this.url,
  });
}

List allSections = [
  section(
    title: 'Business',
    image: 'assets/images/finance.png',
    url: const businessSection(),
  ),
  section(
    title: 'Education',
    image: 'assets/images/presentation.png',
    url: const EducationSection(),
  ),
  section(
    title: 'Engineering',
    image: 'assets/images/engineering.png',
    url: const EngineeringSection(),
  ),
  section(
    title: 'Graphic Design',
    image: 'assets/images/web-design.png',
    url: const GraphicSection(),
  ),
  section(
    title: 'Health Science',
    image: 'assets/images/chemistry.png',
    url: const scienceSection(),
  ),
  section(
    title: 'Law',
    image: 'assets/images/compliant.png',
    url: const lawSection(),
  ),
  section(
    title: 'Markting',
    image: 'assets/images/digital-marketing.png',
    url: const marktingSection(),
  ),
  section(
    title: 'Medical Team',
    image: 'assets/images/medical-team.png',
    url: const DoctorSection(),
  ),
  section(
    title: 'Programming',
    image: 'assets/images/programming.png',
    url: const programmingSection(),
  ),
  section(
    title: 'Service Industry',
    image: 'assets/images/report.png',
    url: const ServiceSection(),
  ),
];
