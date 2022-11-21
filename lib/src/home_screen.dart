import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';
import 'package:portal_de_estudiantes/widgets/follow_threads.dart';
import 'package:portal_de_estudiantes/widgets/last_threads.dart';
import 'package:portal_de_estudiantes/widgets/sidebar.dart';
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
                width: width * 0.62,
                height: height * 0.9,
                //color: Colors.amber,
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
