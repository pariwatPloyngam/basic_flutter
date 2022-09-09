import 'package:flutter/material.dart';

import '../../product.dart';
import 'categories.dart';

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
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                itemCount: menu.length,
          gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ),
          itemBuilder: (context, index) => ItemCard(),
        ),
            ),
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(6, 10, 0, 4),
      // width: 180,
      child: Column(
        children: [
          Image.asset(
            menu[0].img,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                menu[0].name,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ราคา " + menu[0].price + " บาท"),
            ],
          )
        ],
      ),
    );
  }
}

// ListView.builder(
        //       itemCount: menu.length,
        //       itemBuilder: (BuildContext context, int index) {
        //         Product food = menu[index];
        //         return ListTile(
        //           leading: Image.asset(food.img),
        //           title: Text(
        //             food.name,
        //             style: TextStyle(fontSize: 20),
        //           ),
        //           subtitle: Text("ราคา "+food.price+" บาท",
        //               style: TextStyle(fontSize: 15)),
        //         );
        //       }),

