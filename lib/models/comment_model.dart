import 'package:flutter/cupertino.dart';
import 'package:portal_de_estudiantes/models/user_model.dart';

class CommentModel {
  UserModel user;
  String message;
  int score;
  bool isChecked;

  CommentModel({
    Key? key,
    required this.user,
    this.message = "",
    this.score = 0,
    this.isChecked = false,
  });
}
