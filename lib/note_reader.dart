// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/widgets/note_card.dart';
import 'package:project/styles.dart';

class note_reader extends StatefulWidget {
  note_reader(this.doc, {super.key});
  QueryDocumentSnapshot doc;
  @override
  State<note_reader> createState() => _note_readerState();
}

class _note_readerState extends State<note_reader> {
  @override
  Widget build(BuildContext context) {
    int color_id = widget.doc['color_id'];
    return Scaffold(
      backgroundColor: Appstyle.cardscolor[color_id],
      appBar: AppBar(
        backgroundColor: Appstyle.cardscolor[color_id],
        elevation: 1,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.doc["note_title"],
              style: Appstyle.mainTitle,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              widget.doc["creation_date"],
              style: Appstyle.dateTitle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.doc["note_content"],
              style: Appstyle.content,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
