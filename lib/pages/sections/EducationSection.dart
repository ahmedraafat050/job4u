import 'package:flutter/material.dart';
import 'package:job4u/services/ImageJob.dart';
import 'package:job4u/services/colors.dart';
import 'package:job4u/services/companysPage.dart';
import 'package:job4u/services/lists.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Education",
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
                    image: "assets/images/AUC.jpg",
                    companyName: "AUC",
                    moveTo: CompanysPage(B: auc),
                  ),
                  ImageField(
                    image: "assets/images/Elamir.jpg",
                    companyName: "Elamir",
                    moveTo: CompanysPage(B: elamir),
                  ),
                  ImageField(
                    image: "assets/images/GEMS.jpg",
                    companyName: "GEMS",
                    moveTo: CompanysPage(B: gems),
                  ),
                  ImageField(
                    image: "assets/images/Investview.jpg",
                    companyName: "Investview",
                    moveTo: CompanysPage(B: investview),
                  ),
                  ImageField(
                    image: "assets/images/Justsbr.jpg",
                    companyName: "Justsbr",
                    moveTo: CompanysPage(B: justsbr),
                  ),
                ],
              ),
              Column(
                children: [
                  ImageField(
                    image: "assets/images/Oxbridge.jpg",
                    companyName: "Oxbridge",
                    moveTo: CompanysPage(B: oxbridge),
                  ),
                  ImageField(
                    image: "assets/images/Sutherland.jpg",
                    companyName: "Sutherland",
                    moveTo: CompanysPage(B: sutherland),
                  ),
                  ImageField(
                    image: "assets/images/Tetra Pak.jpg",
                    companyName: "Tetra Pak",
                    moveTo: CompanysPage(B: tetra),
                  ),
                  ImageField(
                    image: "assets/images/TIE.jpg",
                    companyName: "TIE",
                    moveTo: CompanysPage(B: tie),
                  ),
                  ImageField(
                    image: "assets/images/Udacity.jpg",
                    companyName: "Udacity",
                    moveTo: CompanysPage(B: udacity),
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
