import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddmodalBottomSheet extends StatelessWidget {
  const AddmodalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
          children: const [
            SizedBox(height: 32,),
           customtextfield(hint: "title"),
           SizedBox( height:16 ,),
           customtextfield(hint: "content",
           maxline: 4,
           )
          ],
      ),
    );
  }
}