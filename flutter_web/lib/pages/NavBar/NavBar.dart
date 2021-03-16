import 'package:flutter/material.dart';
import 'package:flutter_web/pages/NavBar/DesktopNavBar.dart';
import 'package:flutter_web/pages/NavBar/MobileNavBar.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavBar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopNavBar();
      } else {
        return MobileNavBar();
      }
    });
  }
}
