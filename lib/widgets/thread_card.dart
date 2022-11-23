import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portal_de_estudiantes/models/thread_model.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';

class ThreadCard extends StatelessWidget {
  ThreadModel thread;
  ThreadCard({
    Key? key,
    required this.thread,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.35,
      height: height * 0.2,
      child: Column(
        children: [
          // * Banner
          Container(
            width: width * 0.5,
            height: height * 0.05,
            decoration: BoxDecoration(
              color: thread.color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          // * Content
          Container(
            width: width * 0.4,
            height: height * 0.15,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: width * 0.01),
                  width: width * 0.145,
                  height: height * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // * Image
                      SizedBox(
                        width: height * 0.06,
                        height: height * 0.06,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(90),
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              thread.imagePath,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.1,
                        height: height * 0.06,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "# ${thread.name}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: blackText,
                            fontSize: height * 0.02,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: width * 0.01),
                  width: width * 0.145,
                  height: height * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: width * 0.1,
                        height: height * 0.06,
                        child: Text(
                          thread.description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle(
                            color: blackText,
                            fontSize: height * 0.015,
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.03,
                        height: height * 0.06,
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: width * 0.03,
                          height: height * 0.025,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: activeColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Abrir",
                            style: TextStyle(
                                color: Colors.white, fontSize: height * 0.01),
                          ),
                        ),
                      ),
                    ],
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
