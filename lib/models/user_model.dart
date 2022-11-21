import 'package:flutter/cupertino.dart';

class UserModel {
  String name;
  String rut;
  String pass;
  String career;
  int semester;
  int phone;
  String mail;
  String description;
  String imagePath;

  UserModel({
    Key? key,
    required this.name,
    this.rut = "",
    this.pass = "",
    this.career = "",
    this.semester = 1,
    this.phone = 0,
    this.mail = "",
    this.description = "",
    this.imagePath = "",
  });
}
