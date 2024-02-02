import 'package:flutter/material.dart';

import '../constants/constants.dart';

class customtextfield extends StatelessWidget {
  const customtextfield({required this.hint,this.maxline = 1});
    final String hint;
    final int maxline;
  @override
  Widget build(BuildContext context) {
    return  TextField( 
              maxLines:maxline,
              decoration:InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color:kprimarycolor),
                border: buildBorder(),
                enabledBorder: buildBorder(),
                focusedBorder: buildBorder(kprimarycolor)
              ),
            ) ;
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: color??Colors.white, )
              );
  }
}

