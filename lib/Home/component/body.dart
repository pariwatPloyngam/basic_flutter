import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:myflutter/Home/home_screen.dart';

import '../../product.dart';
import 'categories.dart';
import '../component/details.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var product;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 13, 0, 0),
          child: Text(
            "เลือกเมนู",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
             child:ListView.builder(
              itemCount: menu.length,
              itemBuilder: (BuildContext context, int index) {
                Product food = menu[index];
                return ListTile(
                  leading: Image.asset(food.img),
                  title: Text(
                    food.name,
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text("ราคา "+food.price+" บาท",
                      style: TextStyle(fontSize: 15)),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Detail()));
                    
                  },
                );
                
              }),
        ),
      ],
    );
  }
}


// class Details extends StatefulWidget {
//   const Details({Key? key}) : super(key: key);

//   @override
//   State<Details> createState() => _DetailsState();
// }

// class _DetailsState extends State<Details> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orange.shade100,
//       appBar: AppBar(
//         title: const Text("Test"),
//         backgroundColor: Colors.orange.shade300,
//       ),
//     );
    
//   }
// }