import 'package:flutter/material.dart';

class Product {
  final int id;
  final String date;
  final String title;
  final List<String> images;
  final double rating, price;
  final bool stock;
  final String details;

  Product(
      {this.id,
      this.images,
      this.rating = 0.0,
      this.stock,
      this.title,
      this.price,
      this.date,
      this.details});
}

// Our demo Products

List<Product> demoProducts = [
  Product(
      id: 0,
      images: [
        "assets/images/PHPCourseImage.jpg",
      ],
      title: "Best PHP- MySQL Course",
      price: 64.99,
      rating: 4.8,
      stock: true,
      details:
          "Sikharthy Infotech Private Limited is the best Web Development Company in Kolkata."
          "We provide Website Development, Website Designing, Content Development, and Digital Marketing services in Kolkata."
          "Sikharthy Infotech has a dedicated and highly-skilled team of resources for all kinds of assistance."),
  Product(
    id: 1,
    images: [
      "assets/images/AptitudeImage Course.jpg",
    ],
    title: "Best Aptitude Preparation Course",
    price: 50.5,
    rating: 4.1,
    stock: false,
  ),
  Product(
      id: 2,
      images: [
        "assets/images/django-pythone Course Image.jpg",
      ],
      title: "Best Python Django Course",
      price: 36.55,
      rating: 4.1,
      stock: true),
  Product(
      id: 4,
      images: [
        "assets/images/MATLAB-logo.png",
      ],
      title: "Matlab Programming",
      price: 20.20,
      rating: 4.1,
      stock: false),
  Product(
      id: 4,
      images: [
        "assets/images/MATLAB-logo.png",
      ],
      title: "Matlab Programming",
      price: 20.20,
      rating: 4.1,
      stock: false),
  Product(
      id: 4,
      images: [
        "assets/images/MATLAB-logo.png",
      ],
      title: "Matlab Programming",
      price: 20.20,
      rating: 4.1,
      stock: false),
  Product(
      id: 4,
      images: [
        "assets/images/MATLAB-logo.png",
      ],
      title: "Matlab Programming",
      price: 20.20,
      rating: 4.1,
      stock: false),
  Product(
      id: 4,
      images: [
        "assets/images/MATLAB-logo.png",
      ],
      title: "Matlab Programming",
      price: 20.20,
      rating: 4.1,
      stock: false),
];
