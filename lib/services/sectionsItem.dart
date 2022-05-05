import 'package:flutter/material.dart';
import 'package:job4u/pages/homePage.dart';

// ignore: camel_case_types
class sectionItem extends StatelessWidget {
  sectionItem({
    Key? key,
    this.image,
    this.sectionName,
    this.moveTo,
  }) : super(key: key);
  String? image;
  String? sectionName;
  var moveTo;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(
          top: 8.0,
          right: 4.0,
          left: 4.0,
        ),
        child: Card(
          child: ListTile(
            minLeadingWidth: 70,
            leading: Image(
              image: AssetImage(image!),
              height: 50,
              width: 50,
            ),
            title: Text(
              sectionName!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff171818),
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => moveTo!));
      },
    );
  }
}
