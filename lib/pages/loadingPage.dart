import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job4u/business_logic/cubit/app_cubit.dart';
import 'package:job4u/business_logic/cubit/login_cubit/login_cubit.dart';
import 'package:job4u/constant/comstants.dart';

import '../services/colors.dart';
import 'homePage.dart';
import 'signInPage.dart';

class loadingPage extends StatefulWidget {
  const loadingPage({Key? key}) : super(key: key);

  @override
  State<loadingPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() {
    FirebaseAuth.instance.authStateChanges().listen((user) async {
      if (user == null) {
        await Future.delayed(const Duration(seconds: 4), () {
          Navigator.pushReplacementNamed(context, signInPage);
        });
      } else {
        await Future.delayed(const Duration(seconds: 4), () {
          Navigator.pushReplacementNamed(context, home);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(36.0),
              child: Image(
                fit: BoxFit.fill,
                width: 75,
                height: 75,
                alignment: Alignment.center,
                image: AssetImage("assets/icons/Icon.png"),
              ),
            ),
            Text(
              "Get Your Job Now",
              style: TextStyle(
                color: Color.fromARGB(255, 53, 53, 53),
                fontFamily: "Pacifico",
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
