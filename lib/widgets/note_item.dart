import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.only(top: 20, left: 8, bottom: 8, right:3),
      decoration: BoxDecoration(
          color: const Color(0xffFFCD7B),
          borderRadius: BorderRadius.circular(9)),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      ListTile(
          title: const Text("Flutter tips",style: TextStyle(color: Colors.black,fontSize: 25),),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text("Build Your Career With Eng/Tharwat Samy",style: TextStyle(color: Colors.black.withOpacity(0.5))),
          ),
          trailing: IconButton(
            icon:const   Icon(FontAwesomeIcons.trash,color: Colors.black,),
            onPressed: (() {}),
          ),
        ),
       Padding(
          padding:const EdgeInsets.only(bottom: 8, right: 12),
          child: Text("May 21,2022",style: TextStyle(color: Colors.black.withOpacity(0.5))),
        )
      ]),
    );
  }
}
