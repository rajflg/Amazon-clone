import 'package:final_amazon_clone/screen/account_screen.dart';
import 'package:flutter/material.dart';

import '../screen/homescreen.dart';

const double KAppBarHeight = 80;

List<String> categoriesHorizontalList = [
  "Home",
  "Fresh",
  "Application",
      "Books",
        "Toy",
      "Essentiaol",];
const List<String> categoriesLogo = [
 "https://firebasestorage.googleapis.com/v0/b/ecommerce-4d9a0.appspot.com/o/Image%2FHome__kitchen.jpg?alt=media&token=cefa5ad8-3fc7-4c30-8884-99e999916cd3"
  "https://firebasestorage.googleapis.com/v0/b/ecommerce-4d9a0.appspot.com/o/Image%2Ffootwear-icon.jpg?alt=media&token=c5225b0d-dcf7-4155-93e1-9f0f991e753f"
  "https://firebasestorage.googleapis.com/v0/b/ecommerce-4d9a0.appspot.com/o/Image%2Fgrocery.jpg?alt=media&token=c0e32fdb-e9cd-4369-94a8-6c6ac819361f"
  "https://firebasestorage.googleapis.com/v0/b/ecommerce-4d9a0.appspot.com/o/Image%2Fhome_appliances.jpg?alt=media&token=40282824-f239-4e24-9fa4-4d7233ab403e"
  "https://firebasestorage.googleapis.com/v0/b/ecommerce-4d9a0.appspot.com/o/Image%2Fsports.jpg?alt=media&token=2d7f07e6-20e1-45c3-96e8-428c14473359"
];
const List<Widget> screens = [
  HomeScreen(),
  AccountScreen(),
  Center(child: Text("Cart Screen"),),
  Center(child: Text("More Screen"),)
];

List<String> getCategoriesLogodown() {
  return [
    "asset/images/mobailbanner.jpg",
    "asset/images/airpot.jpg"
  ];
}




// Usage
// final List<Image> categoriesLogodown = getCategoriesLogodown();

