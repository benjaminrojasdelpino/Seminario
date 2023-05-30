import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portal_de_estudiantes/models/thread_model.dart';
import 'package:portal_de_estudiantes/src/threads_screen.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';
import 'package:portal_de_estudiantes/widgets/threads_button.dart';

class LastThreads extends StatelessWidget {
  double width;
  double heigth;
  LastThreads({
    Key? key,
    required this.width,
    required this.heigth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ThreadModel> threads = [
      ThreadModel(name: "Noticias-IBC"),
      ThreadModel(name: "Ofertas-Laborales"),
      ThreadModel(name: "Programación-Web"),
      ThreadModel(name: "Curso-Flutter"),
      ThreadModel(name: "Deportes-PUCV"),
    ];

    return Container(
      width: width,
      height: heigth,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // * Margin Top
          Padding(
            padding: EdgeInsets.only(top: heigth * 0.05),
          ),
          // * Text
          SizedBox(
            width: width * 0.9,
            height: heigth * 0.09,
            child: const FittedBox(
              child: Text(
                "Tendencias",
                style: TextStyle(
                  color: mainColor,
                ),
              ),
            ),
          ),
          // * Horizontal Line
          SizedBox(
            width: width * 0.9,
            height: 1,
            child: const Divider(
              color: mainColor,
            ),
          ),
          // * Content
          Container(
            margin: EdgeInsets.only(top: heigth * 0.02),
            width: width * 0.9,
            height: heigth * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var element in threads)
                  ThreadsButton(
                    thread: element,
                    width: width * 0.9,
                    heigth: heigth * 0.1,
                  ),
              ],
            ),
          ),
          // * ShowMore
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      ThreadsScreen(),
                  transitionDuration: Duration.zero,
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: heigth * 0.02),
              width: width * 0.3,
              height: heigth * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    FontAwesomeIcons.plus,
                    color: activeColor,
                    size: heigth * 0.05,
                  ),
                  Text(
                    "Ver Más",
                    style: TextStyle(
                      color: activeColor,
                      fontSize: heigth * 0.04,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
