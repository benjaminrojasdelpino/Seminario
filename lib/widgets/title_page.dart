import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';

class TitlePage extends StatelessWidget {
  double width;
  double heigth;
  String title;

  TitlePage({
    Key? key,
    required this.title,
    required this.width,
    required this.heigth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.6,
      height: heigth * 0.04,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          title,
          style: const TextStyle(color: mainColor),
        ),
      ),
    );
  }
}
