import 'package:flutter/material.dart';

class BrowserModel{
  String image;
  String title;
  String degreename;
  String profection;
  String rating;
  BrowserModel({required this.image,required this.title,required this.degreename,required this.profection,required this.rating});
}

List<BrowserModel> browserdata=[
  BrowserModel(image: 'assets/image/image1.jpg', title: 'Devworks Bootcamp',degreename: 'Boston, MA', profection: 'Web Development, UI/UX, Mobile Development',rating: '8.8'),
  BrowserModel(image: 'assets/image/image2.jpg', title: 'ModernTech Bootcamp', degreename: 'Boston, MA', profection: 'Web Development, UI/UX, Mobile Development', rating: '7.5'),
  BrowserModel(image: 'assets/image/image3.jpg', title: 'Codemasters', degreename: 'Boston, MA', profection: 'Web Development, UI/UX, Mobile Development', rating: '9.2'),
  BrowserModel(image: 'assets/image/image4.jpg', title: 'DevCentral Bootcamp', degreename: 'Boston, MA', profection: 'Web Development, UI/UX, Mobile Development', rating: '6.4'),
];