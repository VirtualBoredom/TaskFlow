import 'package:flutter/material.dart';
import 'package:testtee/SplashScreen.dart';

void main() {
  runApp(StateToDoAssigned());
}

class StateToDoAssigned extends StatefulWidget {
  @override
  _StateToDoAssigned createState() => _StateToDoAssigned();
}

class _StateToDoAssigned extends State<StateToDoAssigned> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'lib/icons/HomeScreen_Background.jpg'), // Path to your image
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              actions: [
                IconButton(
                  icon: const Icon(Icons.notifications),
                  iconSize: 40,
                  color: Colors.black,
                  onPressed: () {
                    // Handle notification button tap
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  iconSize: 40,
                  color: Colors.black,
                  onPressed: () {
                    // Handle more options button tap
                    showMenu(
                      context: context,
                      position: RelativeRect.fromLTRB(
                          500, 50, 0, 0), // Adjust the position as needed
                      items: [
                        PopupMenuItem(
                          child: Text('Log Out'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StateSplashScreen()),
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
            bottomNavigationBar: Container(
              height: 60,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Handle bottom bar button tap
                      },
                      icon: Icon(Icons.add),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
