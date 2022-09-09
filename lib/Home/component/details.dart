import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:myflutter/Home/component/body.dart';

import 'categories.dart';
import '../../product.dart';


class Detail extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      appBar: AppBar(
        title: const Text("data"),
        backgroundColor: Colors.orange.shade300,
      ),
      body: Details(),
    );
  }
}


class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: menu.length,
                  itemBuilder: ((context, index) {
                    Product food = menu[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: Text(food.name),
                      ),
                    );
                    
                  })),
                
              ],
            ),
          ),
        ],
      ),
    );
    
  }
}