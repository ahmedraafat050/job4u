import 'package:flutter/material.dart';
import 'package:job4u/services/ImageJob.dart';
import 'package:job4u/services/colors.dart';
import 'package:job4u/services/companysPage.dart';
import 'package:job4u/services/lists.dart';

class DoctorSection extends StatelessWidget {
  const DoctorSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Medical Team",
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
                    image: "assets/images/Antal.jpg",
                    companyName: "Antal",
                    moveTo: CompanysPage(B: antal),
                  ),
                  ImageField(
                    image: "assets/images/Doctor Click.jpg",
                    companyName: "Doctor Click",
                    moveTo: CompanysPage(B: click),
                  ),
                  ImageField(
                    image: "assets/images/ER Specialist.jpg",
                    companyName: "مستشفي العربي",
                    moveTo: CompanysPage(B: alaraby),
                  ),
                  ImageField(
                    image: "assets/images/Go Puppy.jpg",
                    companyName: "Go Puppy",
                    moveTo: CompanysPage(B: go),
                  ),
                  ImageField(
                    image: "assets/images/Kinder Nannies.jpg",
                    companyName: "Kinder Nannies",
                    moveTo: CompanysPage(B: kinder),
                  ),
                ],
              ),
              Column(
                children: [
                  ImageField(
                    image: "assets/images/LQVIA.jpg",
                    companyName: "LQVIA",
                    moveTo: CompanysPage(B: lqvia),
                  ),
                  ImageField(
                    image: "assets/images/Mindray Medical.jpg",
                    companyName: "Mindray Medical",
                    moveTo: CompanysPage(B: mindray),
                  ),
                  ImageField(
                    image: "assets/images/Pathfinder.jpg",
                    companyName: "Pathfinder",
                    moveTo: CompanysPage(B: pathfinder),
                  ),
                  ImageField(
                    image: "assets/images/REPR.jpg",
                    companyName: "REPR",
                    moveTo: CompanysPage(B: repr),
                  ),
                  ImageField(
                    image: "assets/images/Time Doctor.jpg",
                    companyName: "Time Doctor",
                    moveTo: CompanysPage(B: time),
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
