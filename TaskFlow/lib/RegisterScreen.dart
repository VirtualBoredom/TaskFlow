import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:testtee/LoginScreen.dart';

class StateRegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterScreen();
  }
}

class RegisterScreen extends State<StateRegisterScreen> {
  @override
  bool _obscureText = true;
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
                SizedBox(height: 40),
                Container(
                  height: 100,
                  child: Image.asset('lib/icons/TF-LOGO.png'),
                ),
                Container(
                    child: Text("Set up your account",
                        style: GoogleFonts.lalezar(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0,
                          color: Color(0xfff8f8f8),
                        )))),
                // Add some space between the containers
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        width: 330,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 1),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: 330,
                        child: TextField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(
                          height: 20), // Add some space between the containers
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: 330,
                        child: TextField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(
                            top:
                                20), // Adjust the top padding to move the button closer
                        child: Container(
                          height: 50,
                          width: 280,
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle login button press
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF4F90FF)),
                            ),
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 100),
                      Container(
                          child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Already have an account? ",
                            style: GoogleFonts.lalezar(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16.0,
                                color: Color(0xfff8f8f8),
                              ),
                            ),
                          ),
                          TextSpan(
                            text: "Login Now",
                            style: GoogleFonts.lalezar(
                              textStyle: TextStyle(
                                fontSize: 16.0,
                                color: Color(0xFFFFC165),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Navigate to the "RegisterScreen" when "Register here!" is clicked
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StateLoginScreen()),
                                );
                              },
                          ),
                        ]),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void click() {
    print("hello");
  }
}
