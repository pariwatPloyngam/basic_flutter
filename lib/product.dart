import 'package:flutter/material.dart';


class Product {
  final String name, image, desk;
  final int id, price;

  Product({
  required this.name,
  required this.price,
  required this.image, 
  required this.id,
  required this.desk
  });
}

List<Product> products = [
    Product(
      id: 1,
      name: "กะเพราหมูสับไข่ดาว", 
      price: 59,
      image: "assets/image/picture1.jpg",
      desk: Demo,
      ),
    Product(
      id: 2,
      name: "ผัดไทกุ้งสด", 
      price: 69,
      image: "assets/image/picture2.jpg",
      desk: Demo,
      ),
    Product(
      id: 3,
      name: "กุ้งอบวุ้นเส้น",
      price: 69,
      image: "assets/image/picture3.jpg",
      desk: Demo,
  ),
    Product(
      id: 4,
      name: "แกงเขียวหวานไก่",
      price: 99,
      image: "assets/image/picture4.jpg",
      desk: Demo,
  ),
    Product(
      id: 5,
      name: "ต้มข่าไก่",
      price: 99,
      image: "assets/image/picture5.jpg",
      desk: Demo,
  ),
    Product(
      id: 6,
      name: "ปลากระพงทอดน้ำปลา",
      price: 220,
      image: "assets/image/picture6.jpg",
      desk: Demo,
  ),

  Product(
      id: 7,
      name: "กะเพราหมูสับไข่ดาว", 
      price: 59,
      image: "assets/image/picture1.jpg",
      desk: Demo,
      ),
    Product(
      id: 8,
      name: "ผัดไทกุ้งสด", 
      price: 69,
      image: "assets/image/picture2.jpg",
      desk: Demo,
      ),
    Product(
      id: 9,
      name: "กุ้งอบวุ้นเส้น",
      price: 69,
      image: "assets/image/picture3.jpg",
      desk: Demo,
  ),
    Product(
      id: 10,
      name: "แกงเขียวหวานไก่",
      price: 99,
      image: "assets/image/picture4.jpg",
      desk: Demo,
  ),
    Product(
      id: 11,
      name: "ไก่ต้มข่า",
      price: 99,
      image: "assets/image/picture5.jpg",
      desk: Demo,
  ),
    Product(
      id: 12,
      name: "ปลากระพงทอดน้ำปลา",
      price: 220,
      image: "assets/image/picture6.jpg",
      desk: Demo,
  ),
    
  ];
  
  String Demo = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley. ";