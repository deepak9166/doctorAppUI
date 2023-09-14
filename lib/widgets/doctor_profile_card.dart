import 'package:dempapp/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget doctorProfileCard({required Function onTap}) {
  return InkWell(
    onTap: () => onTap(),
    child: Container(
      decoration: BoxDecoration(
          border: Border(left: BorderSide(color: Colors.green, width: 8))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            // contentPadding: EdgeInsets.zero,
            title: Text(
              'Appointment date',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: const [
                  Icon(Icons.alarm),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Wed Nov 20 = 8:00 - 8:30 AM',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            trailing: Icon(Icons.more_vert_sharp),
          ),
          Divider(),
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.network(
                    'https://media.istockphoto.com/id/1311511363/photo/headshot-portrait-of-smiling-male-doctor-with-tablet.jpg?s=612x612&w=0&k=20&c=w5TecWtlA_ZHRpfGh20II-nq5AvnhpFu6BfOfMHuLMA=',
                    fit: BoxFit.cover,
                  )),
            ),
            title: titleText('Dr. Prep Tiwari'),
            subtitle: Text('Orthopedic'),
          )
        ],
      ),
    ),
  );
}
