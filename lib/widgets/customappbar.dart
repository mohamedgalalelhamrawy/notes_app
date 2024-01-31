import 'package:flutter/material.dart';
class costomAppBar extends StatelessWidget {
  const costomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       const Text("Notes",style: TextStyle(
        fontSize: 25
       ),),
        Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(9)),
          height: 48,
          width: 48,
          child: Center(
              child: IconButton(
                  onPressed: (() {}),
                  icon:const Icon(
                    Icons.search,
                    color: Colors.white,
                  ))),
        )
      ],
    );
  }
}
