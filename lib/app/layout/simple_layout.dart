import 'package:flutter/material.dart';
import 'package:ushieru/app/utils/size_config.dart';
import 'package:ushieru/app/widgets/navbar.dart';

class SimpleLayout extends StatelessWidget {
  final Widget child;

  const SimpleLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'lib/app/assets/background.jpg',
              height: SizeConfig.screenHeight,
              width: SizeConfig.screenWidth,
              fit: BoxFit.cover,
            ),
            Container(
              height: SizeConfig.screenHeight,
              width: SizeConfig.screenWidth,
              color: Colors.black.withAlpha(100),
            ),
            SingleChildScrollView(child: child),
            Container(
              alignment: Alignment.topCenter,
              height: SizeConfig.screenHeight,
              width: SizeConfig.screenWidth,
              child: Navbar(),
            ),
          ],
        ),
      ),
    );
  }
}
