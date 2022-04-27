import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  String title;
  Icon icon;

  Category({
    required this.title,
    required this.icon,
  });
}

final List<Category> demoCategoryList = [
  Category(
    title: 'Automotriz',
    icon: const Icon(Icons.car_rental),
  ),
  Category(
    title: 'Ceramica',
    icon: const Icon(Icons.house),
  ),
  Category(
    title: 'Electricidad',
    icon: const Icon(Icons.lightbulb_outline),
  ),
  Category(
    title: 'Pintura',
    icon: const Icon(Icons.palette),
  ),
  Category(
    title: 'Construccion',
    icon: const Icon(Icons.build),
  ),
];
