import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portal_de_estudiantes/src/create_thread.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';

class DiscoverCreateThreads extends StatelessWidget {
  double width;
  double height;

  DiscoverCreateThreads({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.9,
      height: height,
      child: Row(
        children: [
          SizedBox(
            width: width * 0.25,
            height: height,
            child: const FittedBox(
              alignment: Alignment.centerLeft,
              child: Text(
                "Descubre Nuevos Hilos!",
                style: TextStyle(
                  color: mainColor,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: width * 0.03)),
          // * ShowMore
          SizedBox(
            width: width * 0.07,
            height: height * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  FontAwesomeIcons.plus,
                  color: activeColor,
                  size: height * 0.25,
                ),
                Text(
                  "Ver Más",
                  style: TextStyle(
                    color: activeColor,
                    fontSize: height * 0.18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            CreateThreadScreen(),
                        transitionDuration: Duration.zero,
                      ),
                    );
                  },
                  child: Container(
                    width: width * 0.15,
                    height: height * 0.4,
                    decoration: BoxDecoration(
                      color: activeColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: width * 0.01)),
                        Icon(
                          FontAwesomeIcons.squarePlus,
                          size: height * 0.23,
                          color: Colors.white,
                        ),
                        Padding(padding: EdgeInsets.only(left: width * 0.025)),
                        Text(
                          "Crear Hilo",
                          style: TextStyle(
                              color: Colors.white, fontSize: height * 0.2),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
