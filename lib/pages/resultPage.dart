import 'dart:io';

import 'package:flutter/material.dart';
import 'package:job4u/pages/notificationPage.dart';
import 'package:job4u/services/calcFuncation.dart';
import 'package:job4u/services/colors.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:file_picker/file_picker.dart';

_callNumber() async {
  const number = '+201148718389'; //set the number here
  await FlutterPhoneDirectCaller.callNumber(number);
}

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b475e),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
              padding: EdgeInsets.all(16.0),
              child: Image(
                image: AssetImage("assets/images/640px-Emoji_u1f44f.svg.png"),
                width: 100,
                height: 100,
              )),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              "Congratulations your score is:",
              style: TextStyle(
                fontSize: 21,
                fontFamily: "BAHNSCHRIFT",
                color: secColor,
              ),
            ),
          ),
          Text(
            " ${pointer.floor()} / 100 ",
            style: const TextStyle(
              fontSize: 36,
              fontFamily: "BAHNSCHRIFT",
              color: Colors.lightGreen,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              "Contact us to schedule an interview",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "BAHNSCHRIFT",
                color: secColor,
              ),
            ),
          ),
          const Divider(
            thickness: 1,
            color: Color.fromARGB(155, 114, 114, 114),
            height: 32,
            indent: 32,
            endIndent: 32,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 0, left: 16, bottom: 12, right: 16),
              child: ElevatedButton(
                onPressed: _callNumber,
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                  minimumSize: const Size(
                    120,
                    55,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Call us",
                      style: TextStyle(
                        color: secColor,
                        fontSize: 21,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.phone,
                        color: secColor,
                        size: 28,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: ElevatedButton(
                onPressed: () async {
                  FilePickerResult? result =
                      await FilePicker.platform.pickFiles();
                  if (result != null) {
                    File file = File(result.files.single.path!);

                    await Future.delayed(const Duration(milliseconds: 1500),
                        () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const notificationPage()));
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: secColor,
                  minimumSize: const Size(
                    120,
                    55,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Send CV",
                      style: TextStyle(
                        color: mainColor,
                        fontSize: 21,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.article_outlined,
                        color: mainColor,
                        size: 28,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Fail extends StatelessWidget {
  const Fail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b475e),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                radius: 50,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/Very_sad_emoji_icon_png_large (1).png"),
                  radius: 49,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Sorry your score is:",
                style: TextStyle(
                  fontSize: 21,
                  fontFamily: "BAHNSCHRIFT",
                  color: secColor,
                ),
              ),
            ),
            Text(
              " ${pointer.floor()} / 100 ",
              style: const TextStyle(
                fontSize: 36,
                fontFamily: "BAHNSCHRIFT",
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                "You miss some basic skills we need",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "BAHNSCHRIFT",
                  color: secColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                "We wish you good luck",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: "BAHNSCHRIFT",
                  color: secColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
