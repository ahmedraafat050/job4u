import 'package:flutter/material.dart';
import 'package:job4u/services/ImageJob.dart';
import 'package:job4u/services/colors.dart';
import 'package:job4u/services/companysPage.dart';
import 'package:job4u/services/lists.dart';

class EngineeringSection extends StatelessWidget {
  const EngineeringSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Engineering",
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
                    image: "assets/images/Arrow.jpg",
                    companyName: "Arrow",
                    moveTo: CompanysPage(B: arrow),
                  ),
                  ImageField(
                    image: "assets/images/Atomica.jpg",
                    companyName: "Atomica",
                    moveTo: CompanysPage(B: atomica),
                  ),
                  ImageField(
                    image: "assets/images/Cegedim.jpg",
                    companyName: "Cegedim",
                    moveTo: CompanysPage(B: cegedim),
                  ),
                  ImageField(
                    image: "assets/images/empg.jpg",
                    companyName: "empg",
                    moveTo: CompanysPage(B: empg),
                  ),
                  ImageField(
                    image: "assets/images/General Motors.jpg",
                    companyName: "General Motors",
                    moveTo: CompanysPage(B: general),
                  ),
                ],
              ),
              Column(
                children: [
                  ImageField(
                    image: "assets/images/O_Projects.jpg",
                    companyName: "O_Projects",
                    moveTo: CompanysPage(B: o_project),
                  ),
                  ImageField(
                    image: "assets/images/One Identity.jpg",
                    companyName: "One Identity",
                    moveTo: CompanysPage(B: one),
                  ),
                  ImageField(
                    image: "assets/images/Pelcro.jpg",
                    companyName: "Pelcro",
                    moveTo: CompanysPage(B: pelcro),
                  ),
                  ImageField(
                    image: "assets/images/POMAC.jpg",
                    companyName: "POMAC",
                    moveTo: CompanysPage(B: pomac),
                  ),
                  ImageField(
                    image: "assets/images/Untap.jpg",
                    companyName: "Untap",
                    moveTo: CompanysPage(B: untap),
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
