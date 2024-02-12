import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/addNoteForm.dart';
import 'package:notes_app/widgets/custom_textfield.dart';
import 'package:notes_app/widgets/custtom_botton.dart';

class AddmodalBottomSheet extends StatelessWidget {
  const AddmodalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is addNoteFailure) {
              print("failed ${state.errmessage}");
            }
            if (state is addNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is addNoteLoading ? true : false,
                child: addFormNote());
          },
        ),
      ),
    );
  }
}
