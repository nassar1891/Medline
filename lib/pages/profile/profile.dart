import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: const Color(0xff151515),
        extendBodyBehindAppBar: true,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(physics: const BouncingScrollPhysics(), children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Profile',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
               IconButton(
                 onPressed: (){
                   //TODO: settings button
                 },
                 icon: const Icon(Icons.settings , color: Colors.white,),
               )
              ],
            ),
            const SizedBox(height: 15),
            Align(
              child: InkWell(
                onTap: () {
                  //Todo : change profile picture
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage("images/person.png"),
                  backgroundColor: Colors.blueGrey,
                  radius: 50,
                  // maxRadius: 200.0,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
                child: Text(
              'Hamada Hilal',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xff151515),
              ),
              child: DefaultTabController(
                  length: 3, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.white10,
                          ),
                          child: TabBar(
                            indicatorColor: Colors.white10,
                            overlayColor: MaterialStateProperty.all(
                              const Color(0xff151515),
                            ),
                            labelColor: Colors.green,
                            unselectedLabelColor: Colors.white,
                            labelStyle: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: const [
                              Tab(
                                text: 'Donations',
                              ),
                              Tab(text: 'Disabilities'),
                              Tab(text: 'Medicine'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                            height: deviceHeight * .55, //height of TabBarView
                            child: TabBarView(children: <Widget>[
                              Center(
                                child: ListView.separated(
                                  physics: const BouncingScrollPhysics(),
                                  separatorBuilder: (c, i) => Container(
                                    color: const Color(0xff151515),
                                    height: 15,
                                  ),
                                  itemCount: 5,
                                  itemBuilder: (c, i) => const Donations(),
                                ),
                              ),
                              const Center(
                                child: Text('Disabilities',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                              const Center(
                                child: Text('Medicine ',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            ])),
                      ])),
            ),
          ]),
        ));
  }
}

class Donations extends StatelessWidget {
  const Donations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white10,
      ),
      child: Column(
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: const Color(0xff151515),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('images/icon1.png'),
                      const Text(
                        'A Positive',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('images/icon2.png'),
                      const Text(
                        'Biyala',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('images/icon3.png'),
                      const Text(
                        '4',
                        style: TextStyle(color: Colors.green, fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
            style: TextStyle(color: Colors.white, fontSize: 16, height: 1.3),
          ),
        ],
      ),
    );
  }
}
