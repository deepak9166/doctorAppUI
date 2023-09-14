import 'package:dempapp/screen/schedule.dart';
import 'package:dempapp/widgets/service_widget.dart';
import 'package:dempapp/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../constant/app_image.dart';
import '../widgets/doctor_profile_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dorctorBg =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCuuitmlu1xlcgkuy1mRbMY_ATgBONYnAP2g&usqp=CAU';
    return Scaffold(
      extendBodyBehindAppBar: true,
      // floatingActionButton: FloatingActionButton(onPressed: (){}),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      ],
      backgroundColor: Colors.grey,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
      ),
      // extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Center(
            child: Image.asset(
          AppImage.profile,
          height: 50,
        )),
        actions: const [
          CircleAvatar(
            child: Icon(Icons.notifications),
          ),
          SizedBox(
            width: 8,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(dorctorBg), fit: BoxFit.cover)),
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome!\nRajesh',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'How is it going today?',
                        style: TextStyle(color: Colors.grey),
                      ),
                      OutlinedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ScheduleScreen(),));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.lightbulb_outline,
                                color: Colors.white,
                              ),
                              Text(
                                'Urgent Care',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// title
                    titleTextTile('Our Services'),

                    /// service items
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        serviceWidget('Consultation'),
                        serviceWidget('Medicines'),
                        serviceWidget('Ambulance'),
                      ],
                    ),

                    /// title
                    titleTextTile('Appointment', isShowSeeAll: true),

                    /// appointment list
                    doctorProfileCard(onTap: (){

                    })
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
