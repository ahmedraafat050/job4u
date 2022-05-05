import 'package:flutter/material.dart';
import 'package:job4u/services/ImageJob.dart';
import 'package:job4u/services/colors.dart';
import 'package:job4u/services/companysPage.dart';
import 'package:job4u/services/lists.dart';

class scienceSection extends StatelessWidget {
  const scienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Health Science",
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
                    image: "assets/images/Abbott.jpg",
                    companyName: "Abbott",
                    moveTo: CompanysPage(B: abbott),
                  ),
                  ImageField(
                    image: "assets/images/Agoda.jpg",
                    companyName: "Agoda",
                    moveTo: CompanysPage(B: agoda),
                  ),
                  ImageField(
                    image: "assets/images/Agolo.jpg",
                    companyName: "Agolo",
                    moveTo: CompanysPage(B: agolo),
                  ),
                  ImageField(
                    image: "assets/images/Gsk.jpg",
                    companyName: "GSK",
                    moveTo: CompanysPage(B: gsk),
                  ),
                  ImageField(
                    image: "assets/images/IQVIA.jpg",
                    companyName: "IQVIA",
                    moveTo: CompanysPage(B: iqvia),
                  ),
                ],
              ),
              Column(
                children: [
                  ImageField(
                    image: "assets/images/Jonson&Jonson.jpg",
                    companyName: "Jonson & Jonson",
                    moveTo: CompanysPage(B: jonson),
                  ),
                  ImageField(
                    image: "assets/images/Relinance_Health.jpg",
                    companyName: "Relinance Health",
                    moveTo: CompanysPage(B: relinance),
                  ),
                  ImageField(
                    image: "assets/images/Spokn.jpg",
                    companyName: "Spokn",
                    moveTo: CompanysPage(B: spokn),
                  ),
                  ImageField(
                    image: "assets/images/Trufla.jpg",
                    companyName: "Trufla",
                    moveTo: CompanysPage(B: trufla),
                  ),
                  ImageField(
                    image: "assets/images/Vezeeta.jpg",
                    companyName: "Vezeeta",
                    moveTo: CompanysPage(B: vezeeta),
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
