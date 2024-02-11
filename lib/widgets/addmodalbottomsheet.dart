import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textfield.dart';
import 'package:notes_app/widgets/custtom_botton.dart';

class AddmodalBottomSheet extends StatelessWidget {
  const AddmodalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: addFormNote(),
      ),
    );
  }
}

class addFormNote extends StatefulWidget {
  const addFormNote({
    super.key,
  });

  @override
  State<addFormNote> createState() => _addFormNoteState();
}

class _addFormNoteState extends State<addFormNote> {
  GlobalKey<FormState>formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          customtextfield(
            onsaved: (value){
                title = value;
            },
            hint: "title"),
          SizedBox(
            height: 16,
          ),
          customtextfield(
              onsaved: (value){
                subtitle = value;
            },
            hint: "content",
            maxline: 4,
          ),
          SizedBox(height: 50,),
          customBotton(
            ontap: (){
              if(formkey.currentState!.validate()){
                   formkey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
             SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
