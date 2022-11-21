import 'package:flutter/material.dart';
import 'package:portal_de_estudiantes/models/comment_model.dart';
import 'package:portal_de_estudiantes/models/thread_model.dart';
import 'package:portal_de_estudiantes/models/user_model.dart';

class PublishModel {
  int id;
  String publishContent;
  UserModel user;
  ThreadModel thread;
  int score;
  List<CommentModel> comments;

  PublishModel({
    Key? key,
    required this.id,
    required this.user,
    required this.thread,
    required this.publishContent,
    this.score = 0,
    required this.comments,
  });
}
