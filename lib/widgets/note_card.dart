// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/styles.dart';

Widget notecard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Appstyle.cardscolor[doc['color_id']],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["note_title"],
            style: Appstyle.mainTitle,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            doc["creation_date"],
            style: Appstyle.dateTitle,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            doc["note_content"],
            style: Appstyle.content,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    ),
  );
}
