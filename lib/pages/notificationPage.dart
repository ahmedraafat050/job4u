import 'package:flutter/material.dart';

class notificationPage extends StatelessWidget {
  const notificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111C26),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xff111C26),
            image: DecorationImage(
              image: AssetImage("assets/backgrounds/sucess.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              height: 260,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Image(
                      fit: BoxFit.fill,
                      width: 85,
                      height: 85,
                      alignment: Alignment.center,
                      image: AssetImage("assets/images/checked.png"),
                    ),
                  ),
                  Center(
                    child: Text(
                      "The CV has been sent successfully",
                      style: TextStyle(
                        color: Color.fromARGB(255, 53, 53, 53),
                        fontFamily: "Rubik",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        "We will get back to you within 4 days to a week",
                        style: TextStyle(
                          color: Color.fromARGB(255, 53, 53, 53),
                          fontFamily: "Rubik",
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
