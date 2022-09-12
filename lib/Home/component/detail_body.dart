import 'package:flutter/material.dart';

import '../../product.dart';

class DetailBody extends StatelessWidget {
  final Product product;
  const DetailBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          children: [
            Text(product.name, 
            style: 
            TextStyle(color: Colors.white, 
            fontWeight: (FontWeight.bold), 
            fontSize: 20))
          ],
        ),
      ),
    );
    
  }
}
