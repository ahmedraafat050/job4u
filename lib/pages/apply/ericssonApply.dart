import 'package:flutter/material.dart';
import 'package:job4u/pages/resultPage.dart';
import 'package:job4u/services/calcFuncation.dart';
import 'package:job4u/services/colors.dart';

class EricssonApply extends StatefulWidget {
  const EricssonApply({Key? key}) : super(key: key);

  @override
  State<EricssonApply> createState() => _EricssonApplyState();
}

class _EricssonApplyState extends State<EricssonApply> {
  List<bool> value = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: mainColor,
        shadowColor: const Color(0x00000000),
        title: Text(
          "Apply Now",
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
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 60,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0x22000000),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: mainColor,
                      value: value[0],
                      onChanged: (value) {
                        setState(() {
                          this.value[0] = value!;
                        });
                      },
                    ),
                    const Text(
                      "leadership position",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 60,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0x22000000),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: mainColor,
                      value: value[1],
                      onChanged: (value) {
                        setState(() {
                          this.value[1] = value!;
                        });
                      },
                    ),
                    const Text(
                      "Networks and Managed Services",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 60,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0x22000000),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: mainColor,
                      value: value[2],
                      onChanged: (value) {
                        setState(() {
                          this.value[2] = value!;
                        });
                      },
                    ),
                    const Text(
                      "Data Structures",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 60,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0x22000000),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: mainColor,
                      value: value[3],
                      onChanged: (value) {
                        setState(() {
                          this.value[3] = value!;
                        });
                      },
                    ),
                    const Text(
                      "problem solving",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 60,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0x22000000),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: mainColor,
                      value: value[4],
                      onChanged: (value) {
                        setState(() {
                          this.value[4] = value!;
                        });
                      },
                    ),
                    const Text(
                      "Organisational Change",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 60,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0x22000000),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: mainColor,
                      value: value[5],
                      onChanged: (value) {
                        setState(() {
                          this.value[5] = value!;
                        });
                      },
                    ),
                    const Text(
                      "Financial competence",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 60,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0x22000000),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: mainColor,
                      value: value[6],
                      onChanged: (value) {
                        setState(() {
                          this.value[6] = value!;
                        });
                      },
                    ),
                    const Text(
                      "Innovative and creative thinking",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      pointer = 0;
                      CalcPoints(value);
                      if (pointer >= 60) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Success()));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Fail()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: mainColor,
                      minimumSize: const Size(
                        150,
                        60,
                      ),
                    ),
                    child: const Text(
                      "Apply",
                      style: TextStyle(
                        color: Color(0xfff8f8f8),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
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
