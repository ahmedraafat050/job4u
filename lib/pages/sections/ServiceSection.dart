import 'package:flutter/material.dart';
import 'package:job4u/services/ImageJob.dart';
import 'package:job4u/services/colors.dart';
import 'package:job4u/services/companysPage.dart';
import 'package:job4u/services/lists.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Service Industry",
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
                    image: "assets/images/Four Seasons.jpg",
                    companyName: "Four Seasons",
                    moveTo: CompanysPage(B: four),
                  ),
                  ImageField(
                    image: "assets/images/IWG.jpg",
                    companyName: "IWG",
                    moveTo: CompanysPage(B: iwg),
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
                    image: "assets/images/PwC.jpg",
                    companyName: "PwC",
                    moveTo: CompanysPage(B: pwc),
                  ),
                  ImageField(
                    image: "assets/images/RATP Dev.jpg",
                    companyName: "RATP Dev",
                    moveTo: CompanysPage(B: ratp),
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
                    image: "assets/images/VMware.jpg",
                    companyName: "VMware",
                    moveTo: CompanysPage(B: vmwave),
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
