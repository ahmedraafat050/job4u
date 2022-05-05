import 'package:flutter/material.dart';
import 'package:job4u/pages/resultPage.dart';
import 'package:job4u/services/calcFuncation.dart';
import 'package:job4u/services/colors.dart';

class VodafoneApply extends StatefulWidget {
  const VodafoneApply({Key? key}) : super(key: key);

  @override
  State<VodafoneApply> createState() => _VodafoneApplyState();
}

class _VodafoneApplyState extends State<VodafoneApply> {
  List<bool> value = [false, false, false, false, false, false];
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
                      "Experience with Linux",
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
                      "Good knowledge in networking",
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
                      "Experience on NSX-T services.",
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
                      "Familiar with vCloud Director.",
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
                      "Required Criteria",
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
                      "Experience deploying",
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