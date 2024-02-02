import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';

class customBotton extends StatelessWidget {
  const customBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: kprimarycolor),
      child: const Center(
          child: Text(
        "Add",
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}