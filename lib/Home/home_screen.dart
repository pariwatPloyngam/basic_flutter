import 'package:flutter/material.dart';

import '../Home/component/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {},
        // ),
        backgroundColor: Colors.orange.shade300,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            "Food Conner", 
            style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white
            )),
        ),
      ),
      body: Body(),
    );
  }
}
