import 'package:flutter/material.dart';
import 'package:job4u/services/ImageJob.dart';
import 'package:job4u/services/colors.dart';
import 'package:job4u/services/companysPage.dart';
import 'package:job4u/services/lists.dart';

class businessSection extends StatelessWidget {
  const businessSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Business & Finance",
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
                    image: "assets/images/Adidas.jpg",
                    companyName: "adidas",
                    moveTo: CompanysPage(B: adidas),
                  ),
                  ImageField(
                    image: "assets/images/Amazon.jpg",
                    companyName: "Amazon",
                    moveTo: CompanysPage(B: amazon),
                  ),
                  ImageField(
                    image: "assets/images/EY.jpg",
                    companyName: "EY",
                    moveTo: CompanysPage(B: ey),
                  ),
                  ImageField(
                    image: "assets/images/HSBC.jpg",
                    companyName: "HSBC",
                    moveTo: CompanysPage(B: hsbc),
                  ),
                  ImageField(
                    image: "assets/images/IWG plc.jpg",
                    companyName: "IWG plc",
                    moveTo: CompanysPage(B: iwg),
                  ),
                ],
              ),
              Column(
                children: [
                  ImageField(
                    image: "assets/images/Luxoft.jpg",
                    companyName: "Luxoft",
                    moveTo: CompanysPage(B: luxoft),
                  ),
                  ImageField(
                    image: "assets/images/Novo Nordisk.jpg",
                    companyName: "Novo Nordisk",
                    moveTo: CompanysPage(B: novo),
                  ),
                  ImageField(
                    image: "assets/images/Philip morris.jpg",
                    companyName: "Philip morris",
                    moveTo: CompanysPage(B: philip),
                  ),
                  ImageField(
                    image: "assets/images/Siemens Energy.jpg",
                    companyName: "Siemens Energy",
                    moveTo: CompanysPage(B: simemens),
                  ),
                  ImageField(
                    image: "assets/images/Sky.jpg",
                    companyName: "Sky",
                    moveTo: CompanysPage(B: sky),
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
