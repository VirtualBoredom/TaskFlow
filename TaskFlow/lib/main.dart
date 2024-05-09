/* Authored by: Patrick Nhel L. Estrella
Company: Virtual Boredom
Project: TaskFlow
Feature: [TSF 001] Login Screen
Description: this is the user screen
 */

import 'package:flutter/material.dart';
import 'package:testtee/RegisterScreen.dart';
import './LoginScreen.dart';
import './SplashScreen.dart';

void main() {
  runApp(MaterialApp(
    color: Colors.red,
    title: "My First Flutter app",
    home: StateSplashScreen(),
  ));
}
