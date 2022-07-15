import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medline/pages/medicine/MedicineFeed.dart';
import 'package:medline/pages/disabilities/DisabilitiesFeed.dart';
import 'package:medline/pages/donations/DonationFeed.dart';


class CategoriesPage extends StatefulWidget {

  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  int currentIndex = 0;
  final screens = [
    const Center(child: DonationsFeed()),
    const Center(child: MedicineFeed()),
    const Center(child: DisabilitiesFeed()),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff151515),
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff151515),
      //   title: const Text(
      //     'Medline',
      //     style: TextStyle(color: Colors.green, fontSize: 25),
      //   ),
      //   centerTitle: true,
      //   elevation: 0.0,
      // ),
      body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.green,
          selectedFontSize: 20,

          unselectedItemColor: Colors.blueGrey,
          unselectedFontSize: 15,

          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.bloodtype),
              label: 'Donations',
              backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.capsule_fill),
                label: 'Medicine',
                backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.wheelchair_pickup_outlined),
                label: 'Disabilities',
                backgroundColor: Colors.black
            ),
          ],
        )
    );
  }
}