import 'package:flutter/material.dart';


class Product {
  final String name, image;
  final int id, price;

  Product({
  required this.name,
  required this.price,
  required this.image, 
  required this.id,
  });
}

List<Product> products = [
    Product(
      id: 1,
      name: "กะเพราหมูสับไข่ดาว", 
      price: 59,
      image: "assets/image/picture1.jpg",
      ),
    Product(
      id: 2,
      name: "ผัดไทกุ้งสด", 
      price: 69,
      image: "assets/image/picture2.jpg",
      ),
    Product(
      id: 3,
      name: "กุ้งอบวุ้นเส้น",
      price: 69,
      image: "assets/image/picture3.jpg",
  ),
    Product(
      id: 4,
      name: "แกงเขียวหวานไก่",
      price: 99,
      image: "assets/image/picture4.jpg",
  ),
    Product(
      id: 5,
      name: "ต้มข่าไก่",
      price: 99,
      image: "assets/image/picture5.jpg",
  ),
    Product(
      id: 6,
      name: "ปลากระพงทอดน้ำปลา",
      price: 220,
      image: "assets/image/picture6.jpg",
  ),

  Product(
      id: 7,
      name: "กะเพราหมูสับไข่ดาว", 
      price: 59,
      image: "assets/image/picture1.jpg",
      ),
    Product(
      id: 8,
      name: "ผัดไทกุ้งสด", 
      price: 69,
      image: "assets/image/picture2.jpg",
      ),
    Product(
      id: 9,
      name: "กุ้งอบวุ้นเส้น",
      price: 69,
      image: "assets/image/picture3.jpg",
  ),
    Product(
      id: 10,
      name: "แกงเขียวหวานไก่",
      price: 99,
      image: "assets/image/picture4.jpg",
  ),
    Product(
      id: 11,
      name: "ต้มข่าไก่",
      price: 99,
      image: "assets/image/picture5.jpg",
  ),
    Product(
      id: 12,
      name: "ปลากระพงทอดน้ำปลา",
      price: 220,
      image: "assets/image/picture6.jpg",
  ),
    
  ];