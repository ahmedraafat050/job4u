import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job4u/business_logic/cubit/app_cubit.dart';
import 'package:job4u/pages/aboutUs.dart';
import 'package:job4u/pages/drawer.dart';
import 'package:job4u/pages/searchPage.dart';
import 'package:job4u/pages/sections.dart';

import '../services/colors.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff787470),
        elevation: 0,
        shadowColor: const Color(0x00787470),
        actions: [
          IconButton(
            color: secColor,
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "Job",
                style: TextStyle(
                  fontFamily: "Righteous",
                  color: secColor,
                  fontSize: 28,
                ),
              ),
            ),
            Text(
              "4U",
              style: TextStyle(
                fontFamily: "Righteous",
                color: mainColor,
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),
      drawer: BlocProvider(
        create: (context) => AppCubit(),
        child: DrawerMenu(),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgrounds/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 70, horizontal: 32),
              child: Text(
                "Now it has become easier to test your abilities and skills that are qualified for the labor market with the click of a button",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shadowColor: const Color(0x00000000),
                      minimumSize: const Size(80, 60),
                      primary: const Color(0x0000376b),
                      side: const BorderSide(
                        color: Color(0xffeceff1),
                        width: 1,
                      )),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutUs()));
                  },
                  child: const Text(
                    "Learn More",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffeceff1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(80, 60),
                    primary: mainColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Sections()));
                  },
                  child: Text(
                    "Get Start",
                    style: TextStyle(
                      fontSize: 24,
                      color: secColor,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
