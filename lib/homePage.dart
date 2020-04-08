import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List icons = [
    Icons.airplanemode_active,
    Icons.business,
    Icons.photo_camera,
    Icons.directions_bus,
  ];

  final List categories = [
    'New',
    'Most viewed',
    'Hot tours',
    'All',
  ];
  final List imageUrl = [
    'images/1.jpg',
    'images/2.jpg',
    'images/4.jpg',
  ];
  final List names = [
    'Sahara',
    'Beaches',
    'sidi Boussaid',
  ];
  final List nameLocation = [
    'Douz',
    'Benzaret',
    'Sidi Boussaid',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage('images/image08.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                      size: 30,
                      color: Color(0xFF00b290),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
              child: Text(
                'Discover \n Tunisia with us!',
                style: GoogleFonts.amiri(
                  height: 1.2,
                  textStyle: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFEEEEEE),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFEEEEEE),
                      offset: Offset(0.0, 4.0),
                      blurRadius: 10.0,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width *0.5,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Something',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black26,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 80,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF00b290),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: icons.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color(0xFF00b290).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          icons[index],
                          size: 30,
                          color: Color(0xFF00b290),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 400,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(imageUrl[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(0.6),
                        ),
                        child: Stack(children: <Widget>[
                          Container(),
                          Positioned(
                            bottom: 40,
                            left: 10,
                            child: Text(
                              names[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            left:10,
                            bottom: 10,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xFF00b290),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  nameLocation[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
