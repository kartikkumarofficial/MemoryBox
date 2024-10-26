import 'package:flutter/material.dart';
import 'customblock.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF9E88FC),
      bottomNavigationBar: Container(
        height: height * 0.088,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(13),
            topRight: Radius.circular(13),
          ),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 57, 37, 109),
              Color.fromARGB(255, 33, 23, 64),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 202,157,250),
              Color.fromARGB(255, 154,128,244),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),

        ),

        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white.withOpacity(0.5),
                ),
                height: height * 0.46,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.067),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.035),
                        child: Text(
                          'Hey Rhea!',
                          style: TextStyle(
                            fontSize: width * 0.08,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.3),
                      Text('35', style: TextStyle(fontSize: width * 0.06)),
                      Icon(
                        Icons.local_fire_department,
                        color: Colors.black,
                        size: width * 0.07,
                      ),
                      SizedBox(width: width * 0.02),
                      CircleAvatar(
                        radius: width * 0.05,
                        backgroundImage: const AssetImage('assets/images/4.jpg'),
                      ),
                      SizedBox(width: width * 0.02),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.001, left: width * 0.0354),
                  child: Row(
                    children: const [
                      Text('WELCOME BACK'),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 57, 37, 109),
                          Color.fromARGB(255, 33, 23, 64),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: width * 0.95,
                    height: height * 0.18,
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 6,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "   Welcome to",
                                  style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "  MEMORY BOX",
                                  style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Center(
                            child: Image.asset(
                              'assets/images/3.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.017),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FeatureButton(
                      imagePath: 'assets/images/gt.png',
                      label: 'GAMIFIED TRAINING',
                    ),
                    FeatureButton(
                      imagePath: 'assets/images/ml.png',
                      label: 'MY LOCATION',
                    ),
                    FeatureButton(
                      imagePath: 'assets/images/ts.png',
                      label: 'TASK SCHEDULER',
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'FEATURED GAMES',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.95,
                  height: height * 0.14,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 57, 37, 109),
                            Color.fromARGB(255, 33, 23, 64),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Opacity(
                            opacity: 0.2,
                            child: Image.asset(
                              'assets/images/puzzle.png',
                              fit: BoxFit.fill,
                              width: width * 0.95,
                              height: height * 0.2,
                            ),
                          ),
                          const Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '  3D ART PUZZLE',
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.009),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: SizedBox(
                    width: width * 0.95,
                    height: height * 0.18,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 57, 37, 109),
                              Color.fromARGB(255, 33, 23, 64),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: 0.3,
                              child: Image.asset(
                                'assets/images/map.png',
                                fit: BoxFit.fill,
                                width: width * 0.95,
                                height: height * 0.2,
                              ),
                            ),
                            const Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '  ADD LOCATION',
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                // SizedBox(height: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
