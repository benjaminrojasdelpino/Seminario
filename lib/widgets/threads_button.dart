import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portal_de_estudiantes/models/thread_model.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';

import '../src/threads_inside_screen.dart';

class ThreadsButton extends StatelessWidget {
  double width;
  double heigth;
  ThreadModel thread;
  ThreadsButton({
    Key? key,
    required this.thread,
    required this.width,
    required this.heigth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) =>
                ThreadsInsideScreen(thread: thread),
            transitionDuration: Duration.zero,
          ),
        );
      },
      child: SizedBox(
        width: width,
        height: heigth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: width * 0.78,
              height: heigth,
              child: Text(
                "# ${thread.name}",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: blackText,
                  fontSize: heigth * 0.6,
                ),
              ),
            ),
            Container(
              width: width * 0.2,
              height: heigth * 0.8,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: activeColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                "Abrir",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: heigth * 0.4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
