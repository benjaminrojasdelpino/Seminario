import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portal_de_estudiantes/models/publish_model.dart';
import 'package:portal_de_estudiantes/models/thread_model.dart';
import 'package:portal_de_estudiantes/models/user_model.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';
import 'package:portal_de_estudiantes/widgets/discover_create_threads.dart';
import 'package:portal_de_estudiantes/widgets/follow_threads.dart';
import 'package:portal_de_estudiantes/widgets/last_threads.dart';
import 'package:portal_de_estudiantes/widgets/publish_box.dart';
import 'package:portal_de_estudiantes/widgets/publish_card.dart';
import 'package:portal_de_estudiantes/widgets/sidebar.dart';
import 'package:portal_de_estudiantes/widgets/slider_new_threads.dart';
import 'package:portal_de_estudiantes/widgets/title_page.dart';
import 'package:portal_de_estudiantes/widgets/topbar.dart';

class ThreadsInsideScreen extends StatefulWidget {
  ThreadModel thread;

  ThreadsInsideScreen({Key? key, required this.thread}) : super(key: key);

  @override
  State<ThreadsInsideScreen> createState() => _ThreadsInsideScreenState();
}

class _ThreadsInsideScreenState extends State<ThreadsInsideScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          TopBar(),
          Row(
            children: [
              SideBar(
                pageIndex: 2,
              ),
              // * Content
              Container(
                margin: EdgeInsets.only(left: width * 0.02),
                width: width * 0.60,
                height: height * 0.9,
                child: Column(
                  children: [
                    // * Margin Top
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.01,
                      ),
                    ),
                    // * Title
                    TitlePage(
                      title: "# ${widget.thread.name}",
                      width: width * 0.6,
                      heigth: height * 0.9,
                    ),
                    // * Margin Top
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.01,
                      ),
                    ),
                    // * Content
                    SizedBox(
                      width: width * 0.6,
                      height: height * 0.84,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            // * Description
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: width * 0.54,
                                    height: height * 0.05,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.vertical(
                                          top: Radius.circular(15)),
                                      color: widget.thread.color,
                                    ),
                                  ),
                                  Container(
                                    width: width * 0.54,
                                    height: height * 0.1,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(15)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        // * Image
                                        SizedBox(
                                          width: height * 0.08,
                                          height: height * 0.08,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(90),
                                            child: Image(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                widget.thread.imagePath,
                                              ),
                                            ),
                                          ),
                                        ),
                                        // * Text
                                        Container(
                                          width: width * 0.45,
                                          height: height * 0.08,
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            widget.thread.description,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: blackText,
                                              fontSize: height * 0.02,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // * Margin Top
                            Padding(
                              padding: EdgeInsets.only(
                                top: height * 0.015,
                              ),
                            ),
                            // * Publish
                            PublishBox(
                              width: width * 0.6,
                              height: height * 0.9,
                            ),
                            // * Margin Top
                            Padding(
                              padding: EdgeInsets.only(
                                top: height * 0.01,
                              ),
                            ),
                            // * Plane Text
                            Container(
                              width: width * 0.6 * 0.9,
                              height: height * 0.07,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Desliza y revisa lo que se ha publicado en #${widget.thread.name}",
                                style: TextStyle(
                                    color: mainColor, fontSize: height * 0.03),
                              ),
                            ),
                            PublishCard(
                              width: width * 0.60,
                              height: height * 0.9,
                              publish: PublishModel(
                                id: 1,
                                publishContent:
                                    "Busco programadores part-time para desarrollar página web: Se espera que sepan HTML - CSS y manejo de GitHub",
                                score: 10,
                                user: UserModel(name: "Oscar Ortiz"),
                                thread: ThreadModel(name: "Ofertas-Laborales"),
                                comments: [],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // * Side Content
              Container(
                width: width * 0.23,
                height: height * 0.9,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FollowThreads(width: width * 0.18, heigth: height * 0.4),
                    LastThreads(width: width * 0.18, heigth: height * 0.4),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
