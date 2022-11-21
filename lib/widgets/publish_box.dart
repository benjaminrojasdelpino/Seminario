import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';

class PublishBox extends StatefulWidget {
  double width;
  double height;
  PublishBox({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  State<PublishBox> createState() => _PublishBoxState();
}

class _PublishBoxState extends State<PublishBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.9,
      height: widget.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // * Avatar
          SizedBox(
            width: widget.height * 0.07,
            height: widget.height * 0.07,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: const Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/profile.jpg'),
              ),
            ),
          ),
          // * Box
          Container(
            width: widget.width * 0.75,
            height: widget.height * 0.05,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: placeholdColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "   Publica algo a tus seguidores o en tus hilos...",
              style: TextStyle(
                color: mainColor,
                fontSize: widget.height * 0.02,
              ),
            ),
          )
        ],
      ),
    );
  }
}
