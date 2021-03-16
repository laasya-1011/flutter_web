import 'package:flutter/material.dart';

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(28),
      margin: EdgeInsets.symmetric(vertical: 20),
      width: width,
      // height: height,
      //constraints: BoxConstraints(maxWidth: 1800),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text('WebApp Studio',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'About Us',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'PortFolio',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                elevation: 10,
                color: Colors.pink,
                splashColor: Colors.pink[300],
                onPressed: () {
                  //print('hello');
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
