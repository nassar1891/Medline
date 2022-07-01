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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff151515),
      appBar: AppBar(
        backgroundColor: const Color(0xff151515),
        title: const Text(
          'Categories',
          style: TextStyle(color: Colors.green, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30,
            ),

            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const DonationsFeed()));
                },
                child: const Text(
                  'Donation',
                  style: TextStyle(color: Colors.green),
                )
            ),

            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const MedicineFeed()));
                },
                child: const Text(
                  'Medicine',
                  style: TextStyle(color: Colors.green),
                )
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const DisabilitiesFeed()));
                },
                child: const Text(
                  'Disabilities',
                  style: TextStyle(color: Colors.green),
                )
            ),
          ],
        ),
      ),
    );
  }
}