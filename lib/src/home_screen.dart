import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portal_de_estudiantes/models/comment_model.dart';
import 'package:portal_de_estudiantes/models/publish_model.dart';
import 'package:portal_de_estudiantes/models/thread_model.dart';
import 'package:portal_de_estudiantes/models/user_model.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';
import 'package:portal_de_estudiantes/widgets/follow_threads.dart';
import 'package:portal_de_estudiantes/widgets/last_threads.dart';
import 'package:portal_de_estudiantes/widgets/publish_box.dart';
import 'package:portal_de_estudiantes/widgets/publish_card.dart';
import 'package:portal_de_estudiantes/widgets/sidebar.dart';
import 'package:portal_de_estudiantes/widgets/title_page.dart';
import 'package:portal_de_estudiantes/widgets/topbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          const TopBar(),
          Row(
            children: [
              SideBar(
                pageIndex: 1,
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
                      title: "Mi Feed",
                      width: width * 0.6,
                      heigth: height * 0.9,
                    ),
                    // * Margin Top
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.01,
                      ),
                    ),
                    SizedBox(
                        width: width * 0.6,
                        height: height * 0.84,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
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
                              PublishCard(
                                width: width * 0.60,
                                height: height * 0.9,
                                publish: PublishModel(
                                  id: 1,
                                  publishContent:
                                      "Busco programadores part-time para desarrollar página web: Se espera que sepan HTML - CSS y manejo de GitHub",
                                  score: 10,
                                  user: UserModel(name: "Oscar Ortiz"),
                                  thread:
                                      ThreadModel(name: "Ofertas-Laborales"),
                                  comments: [],
                                ),
                              ),
                            ],
                          ),
                        ))
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
          )
        ],
      ),
    );
  }
}
