// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:job4u/services/colors.dart';

class FieldItems extends StatelessWidget {
  FieldItems({Key? key, this.labelName, this.type, this.visible, this.icon})
      : super(key: key);
  String? labelName;
  TextInputType? type;
  bool? visible;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: TextField(
        scrollPadding: const EdgeInsets.all(15.0),
        cursorColor: const Color(0xffeeeeee),
        decoration: InputDecoration(
          suffixIcon: Icon(
            icon!,
            size: 30.0,
            color: mainColor,
          ),
          label: Text(
            labelName!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          filled: true,
          fillColor: const Color(0xffeeeeee),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
        ),
        keyboardType: type,
        obscureText: visible!,
      ),
    );
  }
}
