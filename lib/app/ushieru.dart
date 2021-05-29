import 'package:flutter/material.dart';
import 'package:ushieru/app/screens/index_screen.dart';

class Ushieru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ushieru 👨‍💻',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: {
        IndexScreen.routeName: (context) => IndexScreen(),
      },
      initialRoute: IndexScreen.routeName,
    );
  }
}
