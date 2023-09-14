import 'package:flutter/material.dart';

Widget titleTextTile(String text, {bool isShowSeeAll = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      trailing: isShowSeeAll
          ? Text(
        'See All',
        style: TextStyle(fontSize: 14, color: Colors.blue),
      )
          : null,
    ),
  );
}Widget titleText(String text, {bool isShowSeeAll = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Text(text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
  );
}
