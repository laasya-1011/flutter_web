import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width, double height) {
    return <Widget>[
      Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(left: 20),
        width: width,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              "Website \nDevelopers",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 50.0,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "We have taken each and every project handed over to us as a challenge,  which has helped us achieve a high project success rate.",
              style: TextStyle(fontSize: 25.0, color: Colors.white),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              elevation: 10,
              color: Colors.white,
              splashColor: Colors.pink[100],
              onPressed: () {
                print('hello');
              },
              child: Text(
                'My Packages',
                style: TextStyle(color: Colors.pink, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Container(
          width: width,
          height: height * 1.2,
          padding: const EdgeInsets.only(top: 10, bottom: 7),
          margin: EdgeInsets.only(top: 5, bottom: 5),
          child: Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.contain,
            width: width,
          ),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: pageChildren(constraints.biggest.width / 2, height * 0.6),
        );
      } else {
        return Column(
            children: pageChildren(constraints.biggest.width, height * 0.48));
      }
    });
  }
}
