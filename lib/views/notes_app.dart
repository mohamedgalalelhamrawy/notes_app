import 'package:flutter/material.dart';

import '../widgets/notes_view_body.dart';

class notesView extends StatelessWidget {
  const notesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: notesViewBody(),
    );
  }
}
