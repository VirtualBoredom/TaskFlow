import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import './RegisterScreen.dart';

class StateLoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreen();
  }
}

class LoginScreen extends State<StateLoginScreen> {
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
                Container(
                  height: 150,
                  child: Image.asset('lib/icons/TF-LOGO.png'),
                ),
                Container(
                    child: Text("Welcome!",
                        style: GoogleFonts.lalezar(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0,
                          color: Color(0xfff8f8f8),
                        )))),
                Container(
                  padding: EdgeInsets.all(20),
                  width: 330,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            25.0), // Adjust the value to change the roundness
                      ),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 1),
                Container(
                  // Password section
                  padding: EdgeInsets.symmetric(
                      horizontal: 20), // Adjust padding here
                  width: 330,
                  height: 100,
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
                        borderRadius: BorderRadius.circular(
                            25.0), // Adjust the value to change the roundness
                      ),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 1),
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
                SizedBox(height: 100),
                Container(
                    child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Don't Have an Account yet? ",
                      style: GoogleFonts.lalezar(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Color(0xfff8f8f8),
                        ),
                      ),
                    ),
                    TextSpan(
                      text: "Register here!",
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
                                builder: (context) => StateRegisterScreen()),
                          );
                        },
                    ),
                  ]),
                ))
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

void click() {
  print("hello");
}
