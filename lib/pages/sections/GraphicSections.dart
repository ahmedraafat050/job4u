import 'package:flutter/material.dart';
import 'package:job4u/services/ImageJob.dart';
import 'package:job4u/services/colors.dart';
import 'package:job4u/services/lists.dart';
import '../../services/companysPage.dart';

class GraphicSection extends StatelessWidget {
  const GraphicSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Graphic Design",
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
                    image: "assets/images/Bosta.jpg",
                    companyName: "Bosta",
                    moveTo: CompanysPage(B: bosta),
                  ),
                  ImageField(
                    image: "assets/images/Beauty Star.jpg",
                    companyName: "Beauty Star",
                    moveTo: CompanysPage(B: beauty),
                  ),
                  ImageField(
                    image: "assets/images/Envsioin Employment.jpg",
                    companyName: "Envsioin Employment",
                    moveTo: CompanysPage(B: envslon),
                  ),
                  ImageField(
                    image: "assets/images/IHR.jpg",
                    companyName: "IHR",
                    moveTo: CompanysPage(B: ihr),
                  ),
                  ImageField(
                    image: "assets/images/Money Fellows.jpg",
                    companyName: "Money Fellows",
                    moveTo: CompanysPage(B: money),
                  ),
                ],
              ),
              Column(
                children: [
                  ImageField(
                    image: "assets/images/Rawaj-HCM.jpg",
                    companyName: "Rawaj-HCM",
                    moveTo: CompanysPage(B: rawaj),
                  ),
                  ImageField(
                    image: "assets/images/Shahry.jpg",
                    companyName: "Shahry",
                    moveTo: CompanysPage(B: shahry),
                  ),
                  ImageField(
                    image: "assets/images/SWVL.jpg",
                    companyName: "SWVL",
                    moveTo: CompanysPage(B: swvl),
                  ),
                  ImageField(
                    image: "assets/images/WEIN Digital.jpg",
                    companyName: "WEIN Digital",
                    moveTo: CompanysPage(B: wein),
                  ),
                  ImageField(
                    image: "assets/images/Zyda.jpg",
                    companyName: "Zyda",
                    moveTo: CompanysPage(B: zyda),
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
