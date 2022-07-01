import 'package:flutter/material.dart';
import 'package:medline/pages/medicine/MedicineState.dart';

class MedicineFeed extends StatelessWidget {
  const MedicineFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: const Color(0xff151515),
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(physics: const BouncingScrollPhysics(), children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Medicine',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  InkWell(
                    onTap: () {
                      //Todo:
                    },
                    child: Image.asset('images/filter.png'),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white10,
                ),
                child: const Center(
                  child: Text(
                    'Panadol',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: deviceHeight * .8,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (c, i) => Container(
                    color: const Color(0xff151515),
                    height: 15,
                  ),
                  itemCount: 10,
                  itemBuilder: (c, i) => const CustomCard(),
                ),
              )
            ])),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PostInMedicine()));
          },
          child: Icon(
            Icons.edit_outlined,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ));
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("images/person.png"),
                backgroundColor: Colors.blueGrey,
                radius: 25,
                // maxRadius: 200.0,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hamada Hilal',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: const [
                      Icon(
                        Icons.access_time_filled,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '1 hour ago.',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  //Todo:
                },
                child: Image.asset('images/menu.png'),
              )
            ],
          ),
          const SizedBox(height: 15),
          const Text(
            'Panadol Extra',
            style: TextStyle(color: Colors.white, fontSize: 16, height: 1.3),
          ),
        ],
      ),
    );
  }
}
