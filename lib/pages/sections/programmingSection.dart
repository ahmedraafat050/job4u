import 'package:flutter/material.dart';
import 'package:job4u/pages/companys/Rotana_Hotel.dart';
import 'package:job4u/pages/companys/Ultra_Targeting.dart';
import 'package:job4u/pages/companys/dell.dart';
import 'package:job4u/pages/companys/ericsson.dart';
import 'package:job4u/pages/companys/henkel.dart';
import 'package:job4u/pages/companys/ibm.dart';
import 'package:job4u/pages/companys/incarta.dart';
import 'package:job4u/pages/companys/maqsam.dart';
import 'package:job4u/pages/companys/raya.dart';
import 'package:job4u/pages/companys/sanofi.dart';
import 'package:job4u/pages/companys/toptal.dart';
import 'package:job4u/pages/companys/vodafone.dart';
import 'package:job4u/services/ImageJob.dart';
import 'package:job4u/services/colors.dart';

class programmingSection extends StatelessWidget {
  const programmingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Programming",
          style: TextStyle(
            fontFamily: "Righteous",
            color: secColor,
            fontSize: 21,
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  ImageField(
                    image: "assets/images/dell.jpg",
                    companyName: "Dell",
                    moveTo: const DellPage(),
                  ),
                  ImageField(
                    image: "assets/images/ericsson.jpg",
                    companyName: "Ericsson",
                    moveTo: const Ericsson(),
                  ),
                  ImageField(
                    image: "assets/images/henkel.jpg",
                    companyName: "Henkel",
                    moveTo: const Henkel(),
                  ),
                  ImageField(
                    image: "assets/images/ibm.jpg",
                    companyName: "IBM",
                    moveTo: const IBM(),
                  ),
                  ImageField(
                    image: "assets/images/incarta.jpg",
                    companyName: "Incarta",
                    moveTo: const Incarta(),
                  ),
                  ImageField(
                    image: "assets/images/maqsam.jpg",
                    companyName: "Maqsam",
                    moveTo: const Maqsam(),
                  ),
                ],
              ),
              Column(
                children: [
                  ImageField(
                    image: "assets/images/raya.jpg",
                    companyName: "RAYA",
                    moveTo: const Raya(),
                  ),
                  ImageField(
                    image: "assets/images/Rotana_Hotel.jpg",
                    companyName: "Rotana Hotel",
                    moveTo: const Rotana_Hotel(),
                  ),
                  ImageField(
                    image: "assets/images/sanofi.jpg",
                    companyName: "Sanofi",
                    moveTo: const Sanofi(),
                  ),
                  ImageField(
                    image: "assets/images/toptal.jpg",
                    companyName: "Toptal",
                    moveTo: const Toptal(),
                  ),
                  ImageField(
                    image: "assets/images/Ultra_Targeting.jpg",
                    companyName: "Ultra Targeting",
                    moveTo: const Ultra_Targeting(),
                  ),
                  ImageField(
                    image: "assets/images/vodafone.jpg",
                    companyName: "Vodafone",
                    moveTo: const Vodafone(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
