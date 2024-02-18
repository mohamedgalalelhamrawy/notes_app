import 'package:flutter/material.dart';

import '../constants/constants.dart';

class customtextfield extends StatelessWidget {
  const customtextfield({required this.hint,this.maxline = 1, this.onsaved, this.onChanged});
    final String hint;
    final int maxline;
    final void Function(String?)? onsaved;
    final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return  TextFormField( 
      onChanged: onChanged,
      onSaved: onsaved,
      validator: (value) {
        if(value?.isEmpty ?? true ){
          return "field is required";
        }else{
          return null;
        }
      },
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

