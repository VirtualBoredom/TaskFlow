import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import './RegisterScreen.dart';
import './LoginScreen.dart';

class StateSplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreen();
  }
}

class SplashScreen extends State<StateSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff9f5aa4),
                Color(0xFFB76ABC),
                Color(0xFFBF6EB0),
                Color(0xFFC471A8),
                Color(0xFFCE7798),
                Color(0xFFD67B8B)
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 350,
                  child: Image.asset('lib/icons/TF-LOGO.png'),
                ),
                Container(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "TASK",
                        style: GoogleFonts.lalezar(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 50.0,
                            color: Color(0xfff8f8f8),
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(3.0, 3.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "FLOW",
                        style: GoogleFonts.lalezar(
                          textStyle: TextStyle(
                            fontSize: 50.0,
                            color: Color(0xFFFFC165),
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(3.0, 3.0),
                              ),
                            ],
                          ),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Navigate to the "RegisterScreen" when "Register here!" is clicked
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StateRegisterScreen()),
                            );
                          },
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top:
                          1), // Adjust the top padding to move the button closer
                  child: Container(
                    height: 50,
                    width: 280,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle login button press
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StateLoginScreen()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF4F90FF)),
                      ),
                      child: Text('Login',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1, // Adjust the top padding to move the button closer
                  ),
                  child: Container(
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(
                      color:
                          Color(0xFFFFBB5A), // Set the color of the container
                      borderRadius: BorderRadius.circular(
                          30), // Optionally, add border radius
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StateRegisterScreen()),
                        );
                      },
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(
                            0), // Remove the elevation
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.transparent, // Make the button transparent
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
