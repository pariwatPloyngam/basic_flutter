import 'package:flutter/material.dart';

import '../Home/component/body.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        elevation: 0,
        title: Text("Food Conner"),
      ),
      body: Body(),
    );
  }
}


