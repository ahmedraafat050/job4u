import 'package:flutter/material.dart';
import 'package:job4u/services/ImageJob.dart';
import 'package:job4u/services/colors.dart';
import 'package:job4u/services/companysPage.dart';
import 'package:job4u/services/lists.dart';

class lawSection extends StatelessWidget {
  const lawSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Law",
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
                    image: "assets/images/ArabyAds.jpg",
                    companyName: "ArabyAds",
                    moveTo: CompanysPage(B: arabyads),
                  ),
                  ImageField(
                    image: "assets/images/Certara.jpg",
                    companyName: "Certara",
                    moveTo: CompanysPage(B: certara),
                  ),
                  ImageField(
                    image: "assets/images/Enerean.jpg",
                    companyName: "Enerean",
                    moveTo: CompanysPage(B: enerean),
                  ),
                  ImageField(
                    image: "assets/images/GE Healthcare.jpg",
                    companyName: "GE Healthcare",
                    moveTo: CompanysPage(B: ge),
                  ),
                  ImageField(
                    image: "assets/images/JTI.jpg",
                    companyName: "JTI",
                    moveTo: CompanysPage(B: jti),
                  ),
                ],
              ),
              Column(
                children: [
                  ImageField(
                    image: "assets/images/MasterCard.jpg",
                    companyName: "Mastercard",
                    moveTo: CompanysPage(B: mastercard),
                  ),
                  ImageField(
                    image: "assets/images/NicheHR.jpg",
                    companyName: "NicheHR",
                    moveTo: CompanysPage(B: nicheHR),
                  ),
                  ImageField(
                    image: "assets/images/SAP.jpg",
                    companyName: "SAP",
                    moveTo: CompanysPage(B: sap),
                  ),
                  ImageField(
                    image: "assets/images/Veolia.jpg",
                    companyName: "Veolia",
                    moveTo: CompanysPage(B: veolia),
                  ),
                  ImageField(
                    image: "assets/images/vivo.jpg",
                    companyName: "vivo",
                    moveTo: CompanysPage(B: vivo),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
