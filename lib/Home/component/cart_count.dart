import 'package:flutter/material.dart';

import '../../product.dart';

class CartCount extends StatefulWidget {
  const CartCount({Key? key}) : super(key: key);

  @override
  State<CartCount> createState() => _CartCountState();
}

class _CartCountState extends State<CartCount> {
  int numOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          ItemNum(
            icon: Icons.remove,
            press: () {
              if (numOfItem > 1) {
                setState(() {
                  numOfItem--;
                });
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0 / 2),
            child: Text(
              numOfItem.toString().padLeft(2, "0"),
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade600),
            ),
          ),
          ItemNum(
              icon: Icons.add, 
              press: () {
                setState(() {
                  numOfItem++;
                });
              }),
        ],
      ),
    );
  }

  SizedBox ItemNum({required IconData icon, required VoidCallback press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
