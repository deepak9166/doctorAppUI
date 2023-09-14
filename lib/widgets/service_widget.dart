import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget serviceWidget(String text){
  return  Column(

    children: [
      CircleAvatar(
        child: Icon(
          Icons.medical_information_outlined,
          color: Colors.blue,
        ),
        backgroundColor: Colors.black.withOpacity(0.1),
        radius: 30,
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ],
  );
}