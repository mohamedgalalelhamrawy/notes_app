import 'package:flutter/material.dart';
class costomAppBar extends StatelessWidget {
  const costomAppBar({
    Key? key, required this.title, required this.icon, this.onPressed,
  }) : super(key: key);
      final String title;
      final IconData icon;
      final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       Text(title,style: TextStyle(
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
                  onPressed: onPressed ,
                  icon: Icon(
                    icon,
                    color: Colors.white,
                  ))),
        )
      ],
    );
  }
}
