import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    required this.note,
    Key? key,
  }) : super(key: key);

  final notemodel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return EditNoteView();
        })));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.only(top: 20, left: 8, bottom: 8, right: 3),
        decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(9)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title:  Text(
              note.title,
              style: const TextStyle(color: Colors.black, fontSize: 25),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(note.subtitle,
                  style: TextStyle(color: Colors.black.withOpacity(0.5))),
            ),
            trailing: IconButton(
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              ),
              onPressed: (() {}),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, right: 12),
            child: Text(note.date,
                style: TextStyle(color: Colors.black.withOpacity(0.5))),
          )
        ]),
      ),
    );
  }
}
