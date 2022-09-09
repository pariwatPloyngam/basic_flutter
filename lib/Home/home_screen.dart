import 'package:flutter/material.dart';

import '../Home/component/body.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),
      onPressed: () {
        
      },  
        ),
        backgroundColor: Colors.orange.shade300,
        elevation: 0,
        title: Text("Food Conner"),
      ),
      body: Body(),
    );
  }
}


