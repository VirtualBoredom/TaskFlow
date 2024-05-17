import 'package:flutter/material.dart';

void main() {
  runApp(StateToDoScreen_ThisWeek());
}

class StateToDoScreen_ThisWeek extends StatefulWidget {
  @override
  _StateToDoScreen_ThisWeek createState() => _StateToDoScreen_ThisWeek();
}

class _StateToDoScreen_ThisWeek extends State<StateToDoScreen_ThisWeek> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 364,
        height: 646,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFB367C3), // Color at 0%
              Color(0xFFBC6CB5), // Color at 39%
              Color(0xFFD87C88), // Color to 100%
            ],
            stops: [0.0, 0.39, 1.0], // Stops for each color
            begin: Alignment.topCenter, // Gradient starts at the top
            end: Alignment.bottomCenter, // And ends at the bottom
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 13,
              left: 321,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/3844442_dot_menu_more_vertical_icon1.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 290,
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/4781824_alarm_alert_attention_bell_clock_icon1.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 113,
              left: 13,
              child: Container(
                width: 333,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Color.fromRGBO(217, 217, 217, 1),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 241,
              left: 13,
              child: Container(
                width: 333,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Color.fromRGBO(217, 217, 217, 1),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 176,
              left: 13,
              child: Container(
                width: 333,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Color.fromRGBO(217, 217, 217, 1),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 113,
              left: 332,
              child: Container(
                width: 14,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Color(0xffbe00c5),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 241,
              left: 332,
              child: Container(
                width: 14,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Color(0xffbe00c5),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 176,
              left: 332,
              child: Container(
                width: 14,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Color(0xffbe00c5),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 15,
              left: 59,
              child: Text(
                'This Week',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 250, 250, 1),
                  fontFamily: 'Khula',
                  fontSize: 32,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 64,
              left: 30,
              child: Text(
                'Need to do',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 250, 250, 1),
                  fontFamily: 'Khula',
                  fontSize: 25,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 126,
              left: 30,
              child: Text(
                'Shopping shopping',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Khula',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 254,
              left: 30,
              child: Text(
                'Dinner with babe',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Khula',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 189,
              left: 30,
              child: Text(
                'Pacute sa Alingal',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Khula',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 145,
              left: 65,
              child: Text(
                '15 Apr',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Khula',
                  fontSize: 12,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 273,
              left: 65,
              child: Text(
                '16 Apr',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Khula',
                  fontSize: 12,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 208,
              left: 65,
              child: Text(
                '15 Apr',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'Khula',
                  fontSize: 12,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 145,
              left: 38,
              child: Container(
                width: 19,
                height: 19,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/290104_calendar_clock_date_event_schedule_icon2.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 273,
              left: 38,
              child: Container(
                width: 19,
                height: 19,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/290104_calendar_clock_date_event_schedule_icon8.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 208,
              left: 38,
              child: Container(
                width: 19,
                height: 19,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/290104_calendar_clock_date_event_schedule_icon3.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 126,
              left: 285,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isChecked1 = !isChecked1; // Toggle the state
                  });
                },
                child: Container(
                  width: 29,
                  height: 29,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      // Choose the image based on the state
                      image: AssetImage(isChecked1
                          ? 'assets/images/326571_check_circle_icon1.png'
                          : 'assets/images/326565_blank_check_circle_icon1.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 254,
              left: 285,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isChecked2 = !isChecked2; // Toggle the state
                  });
                },
                child: Container(
                  width: 29,
                  height: 29,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      // Choose the image based on the state
                      image: AssetImage(isChecked2
                          ? 'assets/images/326571_check_circle_icon2.png'
                          : 'assets/images/326565_blank_check_circle_icon2.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 189,
              left: 285,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isChecked3 = !isChecked3; // Toggle the state
                  });
                },
                child: Container(
                  width: 29,
                  height: 29,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      // Choose the image based on the state
                      image: AssetImage(isChecked3
                          ? 'assets/images/326571_check_circle_icon7.png'
                          : 'assets/images/326565_blank_check_circle_icon7.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 565,
              left: 0,
              child: Container(
                width: 364,
                height: 81,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(39, 33, 33, 1),
                ),
              ),
            ),
            Positioned(
              top: 575,
              left: 152,
              child: Container(
                width: 60,
                height: 54.64285659790039,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/619553_add_create_new_plus_icon1.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 5,
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Backbutton.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
