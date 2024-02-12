import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';

class customBotton extends StatelessWidget {
  const customBotton({super.key, this.ontap, this.isloading = false});
  final bool isloading;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: kprimarycolor),
        child: Center(
            child: isloading
                ? const CircularProgressIndicator(
                   color: Colors.black,)
                : const Text(
                    "Add",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
