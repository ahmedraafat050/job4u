import 'package:flutter/material.dart';
import 'package:job4u/pages/apply/dellApply.dart';
import 'package:job4u/services/headItem.dart';
import '../../services/colors.dart';

class CompanysPage extends StatelessWidget {
  CompanysPage({Key? key, this.B}) : super(key: key);
  List? B;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          B![0],
          style: TextStyle(
            fontFamily: "Righteous",
            color: secColor,
            fontSize: 28,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Content(content: B![1]),
              Head(head: B![2]),
              Content(content: B![3]),
              Head(head: B![4]),
              Content(content: B![5]),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DellApply()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: mainColor,
                      minimumSize: const Size(
                        60,
                        60,
                      ),
                    ),
                    child: Text(
                      "Apply Now",
                      style: TextStyle(
                        color: secColor,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
