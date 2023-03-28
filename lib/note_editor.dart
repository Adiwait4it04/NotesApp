// ignore_for_file: prefer_const_constructors, invalid_return_type_for_catch_error, avoid_print, camel_case_types, non_constant_identifier_names, prefer_final_fields

import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/styles.dart';

class note_editor extends StatefulWidget {
  const note_editor({super.key});

  @override
  State<note_editor> createState() => _note_editorState();
}

class _note_editorState extends State<note_editor> {
  int color_id = Random().nextInt(Appstyle.cardscolor.length);
  String date = DateTime.now().toString();
  TextEditingController _titlecontroller = TextEditingController();
  TextEditingController _maiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyle.cardscolor[color_id],
      appBar: AppBar(
        backgroundColor: Appstyle.cardscolor[color_id],
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Add a new Note",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextField(
              controller: _titlecontroller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Note Title',
              ),
              style: Appstyle.mainTitle,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              date,
              style: Appstyle.dateTitle,
            ),
            SizedBox(
              height: 28,
            ),
            TextField(
              controller: _maiController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Note Title',
              ),
              style: Appstyle.content,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          FirebaseFirestore.instance.collection("Notes").add({
            "note_title": _titlecontroller.text,
            "creation_date": date,
            "note_content": _maiController.text,
            "color_id": color_id,
          }).then((value) {
            Navigator.pop(context);
          }).catchError((error) => print("Failed to new Note due to $error"));
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
