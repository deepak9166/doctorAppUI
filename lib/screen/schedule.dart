import 'package:flutter/material.dart';

import '../constant/app_image.dart';
import '../widgets/doctor_profile_card.dart';
import '../widgets/service_widget.dart';
import '../widgets/text_widget.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: null,
            leadingWidth: 0,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Schedule',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
            actions: [
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.1),
                child: Icon(Icons.notifications_none, color: Colors.black,),
              ),
              SizedBox(
                width: 8,
              )
            ],
            bottom: TabBar(
              indicatorColor: Colors.grey,
              labelColor: Colors.grey,
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Upcoming'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Upcoming'),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [

            ListView.builder(itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Card(child: doctorProfileCard(onTap: (){
                  _showBottomSheetDetail(context);
                })),
              );
            },),
            SizedBox(),
          ]),
        ));
  }

  void _showBottomSheetDetail(BuildContext context) {

    showModalBottomSheet(context: context, builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leadingWidth: 0,

              title:  Text(
                'Schedule',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black),
              ),
              centerTitle: true,
              actions: [TextButton(onPressed: (){}, child: Text('Cancal'))],
            ),

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
            ),
            titleText('Doctor Advice'),
            for(var item in [1,2,3])
              Row(children: [
                Icon(Icons.arrow_right, color: Colors.green,),
                Text('Drink 4 Litters of Water a day')
              ],),

            titleText('Discharge'),

           Row(children: [
             for(var item in [1,2])
               Padding(
                 padding: const EdgeInsets.only(right: 10),
                 child: Container(
                   height: 120,
                   width: 90,

                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(6),
                     color: Colors.blueGrey.withOpacity(0.2),
                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     Image.asset(AppImage.pdf, height: 60,),
                     SizedBox(height: 10,),
                     Text('File 1', style: TextStyle(fontWeight: FontWeight.bold),)
                   ],),

                 ),
               )
           ],)
          ],
        ),
      );
    },);
  }
}
