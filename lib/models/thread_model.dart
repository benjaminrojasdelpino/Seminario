import 'package:flutter/cupertino.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';

class ThreadModel {
  String name;
  String description;
  String imagePath;
  String bannerPath;
  Color color;
  String categorie;

  ThreadModel({
    Key? key,
    required this.name,
    this.description = "",
    this.imagePath = "",
    this.bannerPath = "",
    this.color = mainColor,
    this.categorie = "",
  });
}
