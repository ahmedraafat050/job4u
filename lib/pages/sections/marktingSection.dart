import 'package:flutter/material.dart';
import 'package:job4u/services/ImageJob.dart';
import 'package:job4u/services/colors.dart';
import 'package:job4u/services/companysPage.dart';
import 'package:job4u/services/lists.dart';

class marktingSection extends StatelessWidget {
  const marktingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Markting",
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
                    image: "assets/images/GB_Auto.jpg",
                    companyName: "GB Auto",
                    moveTo: CompanysPage(B: gb),
                  ),
                  ImageField(
                    image: "assets/images/forever.jpg",
                    companyName: "Forever",
                    moveTo: CompanysPage(B: forever),
                  ),
                  ImageField(
                    image: "assets/images/bayzat.jpg",
                    companyName: "Bayzat",
                    moveTo: CompanysPage(B: bayzat),
                  ),
                  ImageField(
                    image: "assets/images/Egypt_life.jpg",
                    companyName: "مصر للتامين",
                    moveTo: CompanysPage(B: masr),
                  ),
                  ImageField(
                    image: "assets/images/Electrolux.jpg",
                    companyName: "Electrolux",
                    moveTo: CompanysPage(B: electrolux),
                  ),
                ],
              ),
              Column(
                children: [
                  ImageField(
                    image: "assets/images/Jumia_Group.jpg",
                    companyName: "Jumia Group",
                    moveTo: CompanysPage(B: jumia),
                  ),
                  ImageField(
                    image: "assets/images/Perarson.jpg",
                    companyName: "Perarson",
                    moveTo: CompanysPage(B: pearson),
                  ),
                  ImageField(
                    image: "assets/images/souq.jpg",
                    companyName: "Souq",
                    moveTo: CompanysPage(B: souq),
                  ),
                  ImageField(
                    image: "assets/images/talabat.jpg",
                    companyName: "Talabat",
                    moveTo: CompanysPage(B: talabat),
                  ),
                  ImageField(
                    image: "assets/images/Majid Al Futtaim.jpg",
                    companyName: "Majid Al Futtaim",
                    moveTo: CompanysPage(B: marketing_Coordinator),
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
