import 'package:flutter/material.dart';
import 'package:myflutter/Home/component/body.dart';

import 'categories.dart';
import '../../product.dart';
import '../component/detail_body.dart';

class Details extends StatelessWidget {
  final Product product;

  const Details({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade300,
      appBar: buildAppBar(context),
      body: DetailBody(product: product,)
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange.shade300,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
