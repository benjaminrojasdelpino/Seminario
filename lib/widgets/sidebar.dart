import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portal_de_estudiantes/src/chat_screen.dart';
import 'package:portal_de_estudiantes/src/home_screen.dart';
import 'package:portal_de_estudiantes/src/login_screen.dart';
import 'package:portal_de_estudiantes/src/notification_screen.dart';
import 'package:portal_de_estudiantes/src/planner_screen.dart';
import 'package:portal_de_estudiantes/src/profile_screen.dart';
import 'package:portal_de_estudiantes/src/threads_screen.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';

class SideBar extends StatefulWidget {
  int pageIndex;
  SideBar({Key? key, required this.pageIndex}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    int chatNumber = 1;
    int notify = 5;

    return Container(
      width: width * 0.15,
      height: height * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: width * 0.005),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.06),
            ),
            SizedBox(
              width: width * 0.13,
              height: height * 0.45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // * Mi Feed
                  GestureDetector(
                    onTap: () {
                      if (widget.pageIndex != 1) {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                HomeScreen(),
                            transitionDuration: Duration.zero,
                          ),
                        );
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FontAwesomeIcons.bars,
                          color: widget.pageIndex == 1
                              ? activeColor
                              : inactiveColor,
                          size: height * 0.03,
                        ),
                        Container(
                          width: width * 0.11,
                          height: height * 0.03,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Mi Feed",
                            style: TextStyle(
                              color: widget.pageIndex == 1
                                  ? activeColor
                                  : inactiveColor,
                              fontSize: height * 0.025,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // * Hilos
                  GestureDetector(
                    onTap: () {
                      if (widget.pageIndex != 2) {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                ThreadsScreen(),
                            transitionDuration: Duration.zero,
                          ),
                        );
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FontAwesomeIcons.list,
                          color: widget.pageIndex == 2
                              ? activeColor
                              : inactiveColor,
                          size: height * 0.03,
                        ),
                        Container(
                          width: width * 0.11,
                          height: height * 0.03,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Hilos",
                            style: TextStyle(
                              color: widget.pageIndex == 2
                                  ? activeColor
                                  : inactiveColor,
                              fontSize: height * 0.025,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // * Chat
                  GestureDetector(
                    onTap: () {
                      if (widget.pageIndex != 3) {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                ChatScreen(),
                            transitionDuration: Duration.zero,
                          ),
                        );
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.chat,
                          color: widget.pageIndex == 3
                              ? activeColor
                              : inactiveColor,
                          size: height * 0.03,
                        ),
                        Container(
                          width: width * 0.095,
                          height: height * 0.03,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Chat",
                            style: TextStyle(
                              color: widget.pageIndex == 3
                                  ? activeColor
                                  : inactiveColor,
                              fontSize: height * 0.025,
                            ),
                          ),
                        ),
                        chatNumber >= 1
                            ? Container(
                                width: width * 0.013,
                                height: width * 0.013,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: notifyColor,
                                ),
                                child: Text(
                                  chatNumber.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.015,
                                  ),
                                ),
                              )
                            : SizedBox(
                                width: width * 0.013,
                                height: width * 0.013,
                              ),
                      ],
                    ),
                  ),
                  // * Notification
                  GestureDetector(
                    onTap: () {
                      if (widget.pageIndex != 4) {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                NotificationScreen(),
                            transitionDuration: Duration.zero,
                          ),
                        );
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FontAwesomeIcons.inbox,
                          color: widget.pageIndex == 4
                              ? activeColor
                              : inactiveColor,
                          size: height * 0.025,
                        ),
                        Container(
                          width: width * 0.095,
                          height: height * 0.03,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Notificaciones",
                            style: TextStyle(
                              color: widget.pageIndex == 4
                                  ? activeColor
                                  : inactiveColor,
                              fontSize: height * 0.025,
                            ),
                          ),
                        ),
                        notify >= 1
                            ? Container(
                                width: width * 0.013,
                                height: width * 0.013,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: notifyColor,
                                ),
                                child: Text(
                                  notify.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.015,
                                  ),
                                ),
                              )
                            : SizedBox(
                                width: width * 0.013,
                                height: width * 0.013,
                              ),
                      ],
                    ),
                  ),
                  // * Profile
                  GestureDetector(
                    onTap: () {
                      if (widget.pageIndex != 5) {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                ProfileScreen(),
                            transitionDuration: Duration.zero,
                          ),
                        );
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FontAwesomeIcons.userAlt,
                          color: widget.pageIndex == 5
                              ? activeColor
                              : inactiveColor,
                          size: height * 0.025,
                        ),
                        Container(
                          width: width * 0.11,
                          height: height * 0.03,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Mi Perfil",
                            style: TextStyle(
                              color: widget.pageIndex == 5
                                  ? activeColor
                                  : inactiveColor,
                              fontSize: height * 0.025,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // * Planner
                  GestureDetector(
                    onTap: () {
                      if (widget.pageIndex != 6) {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                PlannerScreen(),
                            transitionDuration: Duration.zero,
                          ),
                        );
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FontAwesomeIcons.calendar,
                          color: widget.pageIndex == 6
                              ? activeColor
                              : inactiveColor,
                          size: height * 0.025,
                        ),
                        Container(
                          width: width * 0.11,
                          height: height * 0.03,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Mi Planner",
                            style: TextStyle(
                              color: widget.pageIndex == 6
                                  ? activeColor
                                  : inactiveColor,
                              fontSize: height * 0.025,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // * Spacing
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.2),
            ),
            // * Help  & Log out
            SizedBox(
              width: width * 0.13,
              height: height * 0.15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // * Help
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FontAwesomeIcons.circleQuestion,
                        color: blackText,
                        size: height * 0.025,
                      ),
                      Container(
                        width: width * 0.11,
                        height: height * 0.03,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Ayuda al Usuario",
                          style: TextStyle(
                            color: blackText,
                            fontSize: height * 0.025,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // * Log Out
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              LoginScreen(),
                          transitionDuration: Duration.zero,
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FontAwesomeIcons.arrowRightFromBracket,
                          color: blackText,
                          size: height * 0.025,
                        ),
                        Container(
                          width: width * 0.11,
                          height: height * 0.03,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Cerrar Sesión",
                            style: TextStyle(
                              color: blackText,
                              fontSize: height * 0.025,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
