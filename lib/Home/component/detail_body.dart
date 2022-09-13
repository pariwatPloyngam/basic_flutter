import 'package:flutter/material.dart';

import '../../product.dart';
import '../component/product_detail.dart';
import '../component/cart_count.dart';

class DetailBody extends StatelessWidget {
  final Product product;
  const DetailBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Expanded(
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(
                      product.image
                      ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.31),
                  padding: EdgeInsets.only(
                      top: size.height * 0.04, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: [
                      ProductDetail(product: product),
                      Description(product: product),
                      CartCount(),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10.0),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border:
                                    Border.all(color: Colors.orange.shade300),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.add_shopping_cart_outlined,
                                  color: Colors.orange.shade300,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    primary: Colors.orange.shade400,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "ซื้อทันที",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Text(
        product.desk,
        style: TextStyle(
            height: 1.8,
            color: Colors.grey.shade700,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
