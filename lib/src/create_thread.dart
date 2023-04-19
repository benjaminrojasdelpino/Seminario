import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/portal_corlos.dart';
import '../widgets/follow_threads.dart';
import '../widgets/last_threads.dart';
import '../widgets/sidebar.dart';
import '../widgets/title_page.dart';
import '../widgets/topbar.dart';

class CreateThreadScreen extends StatefulWidget {
  Color bannerColor = Colors.white;
  bool isTicket = false;
  bool isEducation = true;
  bool isAdvice = false;
  bool isSport = false;
  bool isForum = false;
  bool isOffTopic = false;

  CreateThreadScreen({Key? key}) : super(key: key);

  @override
  State<CreateThreadScreen> createState() => _CreateThreadScreenState();
}

class _CreateThreadScreenState extends State<CreateThreadScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final sizeBox = width * 0.026;

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
                      title: "Hilos",
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
                    Container(
                      width: width * 0.7,
                      height: height * 0.82,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      // * Content
                      child: Column(
                        children: [
                          // * Spacing
                          Padding(
                            padding: EdgeInsets.only(
                              top: height * 0.02,
                            ),
                          ),
                          // * Title and Avatar
                          SizedBox(
                            width: width * 0.55,
                            height: height * 0.07,
                            child: Stack(
                              children: [
                                // * Avatar
                                Container(
                                  width: height * 0.07,
                                  height: height * 0.07,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(90),
                                    child: const Image(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('assets/img/profile.jpg'),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width: width * 0.4,
                                        height: height * 0.04,
                                        child: const FittedBox(
                                          child: Text(
                                            "Crear Hilo",
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.4,
                                        height: height * 0.03,
                                        child: const FittedBox(
                                          child: Text(
                                            "Ingresa los datos necesarios y crea un hilo donde puedes publicar lo que deseas!",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // * Spacing
                          Padding(
                            padding: EdgeInsets.only(
                              top: height * 0.03,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.55,
                            height: height * 0.65,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // * Text
                                SizedBox(
                                  width: width * 0.13,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // * Name
                                      Container(
                                        height: height * 0.07,
                                        width: width * 0.13,
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Nombre:",
                                          style: TextStyle(
                                            fontSize: height * 0.03,
                                          ),
                                        ),
                                      ),
                                      // * Description
                                      Container(
                                        height: height * 0.08,
                                        width: width * 0.13,
                                        alignment: Alignment.topLeft,
                                        margin:
                                            EdgeInsets.only(top: height * 0.01),
                                        child: Text(
                                          "Descripción:",
                                          style: TextStyle(
                                            fontSize: height * 0.03,
                                          ),
                                        ),
                                      ),
                                      // * Photo
                                      Container(
                                        height: height * 0.14,
                                        width: width * 0.13,
                                        alignment: Alignment.topLeft,
                                        margin:
                                            EdgeInsets.only(top: height * 0.01),
                                        child: Text(
                                          "Foto Principal:",
                                          style: TextStyle(
                                            fontSize: height * 0.03,
                                          ),
                                        ),
                                      ),
                                      // * Banner
                                      Container(
                                        height: height * 0.13,
                                        width: width * 0.13,
                                        alignment: Alignment.topLeft,
                                        margin:
                                            EdgeInsets.only(top: height * 0.01),
                                        child: Text(
                                          "Banner:",
                                          style: TextStyle(
                                            fontSize: height * 0.03,
                                          ),
                                        ),
                                      ),
                                      // * Categorie
                                      Container(
                                        height: height * 0.1,
                                        width: width * 0.13,
                                        alignment: Alignment.topLeft,
                                        margin:
                                            EdgeInsets.only(top: height * 0.01),
                                        child: Text(
                                          "Categorías:",
                                          style: TextStyle(
                                            fontSize: height * 0.03,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // * Widgets
                                SizedBox(
                                  width: width * 0.4,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // * Name
                                      Container(
                                        height: height * 0.07,
                                        alignment: Alignment.centerLeft,
                                        decoration: BoxDecoration(
                                          color: placeholdColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          "   Ingrese nombre del hilo, este no se va a poder cambiar despues",
                                          style: TextStyle(
                                            color: mainColor,
                                            fontSize: height * 0.02,
                                          ),
                                        ),
                                      ),
                                      // * Description
                                      Container(
                                        height: height * 0.08,
                                        alignment: Alignment.centerLeft,
                                        decoration: BoxDecoration(
                                          color: placeholdColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          "   Ingrese descripción del hilo",
                                          style: TextStyle(
                                            color: mainColor,
                                            fontSize: height * 0.02,
                                          ),
                                        ),
                                      ),
                                      // * Photo
                                      Container(
                                        height: height * 0.14,
                                        alignment: Alignment.center,
                                        margin:
                                            EdgeInsets.only(top: height * 0.01),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: mainColor,
                                          ),
                                        ),
                                        // * Icon
                                        child: SizedBox(
                                          width: width * 0.2,
                                          height: height * 0.1,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SizedBox(
                                                width: width * 0.05,
                                                height: height * 0.05,
                                                child: const FittedBox(
                                                    child: Icon(
                                                  FontAwesomeIcons.squarePlus,
                                                  color: mainColor,
                                                )),
                                              ),
                                              SizedBox(
                                                width: width * 0.15,
                                                height: height * 0.03,
                                                child: const FittedBox(
                                                  child: Text(
                                                    "Sube la foto principal del hilo",
                                                    style: TextStyle(
                                                      color: mainColor,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // * Banner
                                      Container(
                                        width: width * 0.4,
                                        height: height * 0.13,
                                        margin:
                                            EdgeInsets.only(top: height * 0.01),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            // * Color pick
                                            SizedBox(
                                              width: width * 0.18,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      // * 1
                                                      GestureDetector(
                                                        onTap: () {
                                                          if (widget.isTicket ==
                                                                  false ||
                                                              widget.bannerColor !=
                                                                  color1) {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  true;
                                                              widget.bannerColor =
                                                                  color1;
                                                            });
                                                          } else {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  false;
                                                              widget.bannerColor =
                                                                  Colors.white;
                                                            });
                                                          }
                                                        },
                                                        child: Container(
                                                          width: sizeBox,
                                                          height: sizeBox,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: color1,
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              5,
                                                            ),
                                                          ),
                                                          child: widget
                                                                      .isTicket &&
                                                                  widget.bannerColor ==
                                                                      color1
                                                              ? Center(
                                                                  child: Icon(
                                                                    FontAwesomeIcons
                                                                        .check,
                                                                    color: Colors
                                                                        .white,
                                                                    size: width *
                                                                        0.009,
                                                                  ),
                                                                )
                                                              : Container(),
                                                        ),
                                                      ),
                                                      // * 2
                                                      GestureDetector(
                                                        onTap: () {
                                                          if (widget.isTicket ==
                                                                  false ||
                                                              widget.bannerColor !=
                                                                  color2) {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  true;
                                                              widget.bannerColor =
                                                                  color2;
                                                            });
                                                          } else {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  false;
                                                              widget.bannerColor =
                                                                  Colors.white;
                                                            });
                                                          }
                                                        },
                                                        child: Container(
                                                          width: sizeBox,
                                                          height: sizeBox,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: color2,
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              5,
                                                            ),
                                                          ),
                                                          child: widget
                                                                      .isTicket &&
                                                                  widget.bannerColor ==
                                                                      color2
                                                              ? Center(
                                                                  child: Icon(
                                                                    FontAwesomeIcons
                                                                        .check,
                                                                    color: Colors
                                                                        .white,
                                                                    size: width *
                                                                        0.009,
                                                                  ),
                                                                )
                                                              : Container(),
                                                        ),
                                                      ),
                                                      // * 3
                                                      GestureDetector(
                                                        onTap: () {
                                                          if (widget.isTicket ==
                                                                  false ||
                                                              widget.bannerColor !=
                                                                  color3) {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  true;
                                                              widget.bannerColor =
                                                                  color3;
                                                            });
                                                          } else {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  false;
                                                              widget.bannerColor =
                                                                  Colors.white;
                                                            });
                                                          }
                                                        },
                                                        child: Container(
                                                          width: sizeBox,
                                                          height: sizeBox,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: color3,
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              5,
                                                            ),
                                                          ),
                                                          child: widget
                                                                      .isTicket &&
                                                                  widget.bannerColor ==
                                                                      color3
                                                              ? Center(
                                                                  child: Icon(
                                                                    FontAwesomeIcons
                                                                        .check,
                                                                    color: Colors
                                                                        .white,
                                                                    size: width *
                                                                        0.009,
                                                                  ),
                                                                )
                                                              : Container(),
                                                        ),
                                                      ),
                                                      // * 4
                                                      GestureDetector(
                                                        onTap: () {
                                                          if (widget.isTicket ==
                                                                  false ||
                                                              widget.bannerColor !=
                                                                  color4) {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  true;
                                                              widget.bannerColor =
                                                                  color4;
                                                            });
                                                          } else {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  false;
                                                              widget.bannerColor =
                                                                  Colors.white;
                                                            });
                                                          }
                                                        },
                                                        child: Container(
                                                          width: sizeBox,
                                                          height: sizeBox,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: color4,
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              5,
                                                            ),
                                                          ),
                                                          child: widget
                                                                      .isTicket &&
                                                                  widget.bannerColor ==
                                                                      color4
                                                              ? Center(
                                                                  child: Icon(
                                                                    FontAwesomeIcons
                                                                        .check,
                                                                    color: Colors
                                                                        .white,
                                                                    size: width *
                                                                        0.009,
                                                                  ),
                                                                )
                                                              : Container(),
                                                        ),
                                                      ),
                                                      // * 5
                                                      GestureDetector(
                                                        onTap: () {
                                                          if (widget.isTicket ==
                                                                  false ||
                                                              widget.bannerColor !=
                                                                  color5) {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  true;
                                                              widget.bannerColor =
                                                                  color5;
                                                            });
                                                          } else {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  false;
                                                              widget.bannerColor =
                                                                  Colors.white;
                                                            });
                                                          }
                                                        },
                                                        child: Container(
                                                          width: sizeBox,
                                                          height: sizeBox,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: color5,
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              5,
                                                            ),
                                                          ),
                                                          child: widget
                                                                      .isTicket &&
                                                                  widget.bannerColor ==
                                                                      color5
                                                              ? Center(
                                                                  child: Icon(
                                                                    FontAwesomeIcons
                                                                        .check,
                                                                    color: Colors
                                                                        .white,
                                                                    size: width *
                                                                        0.009,
                                                                  ),
                                                                )
                                                              : Container(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      // * 6
                                                      GestureDetector(
                                                        onTap: () {
                                                          if (widget.isTicket ==
                                                                  false ||
                                                              widget.bannerColor !=
                                                                  color6) {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  true;
                                                              widget.bannerColor =
                                                                  color6;
                                                            });
                                                          } else {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  false;
                                                              widget.bannerColor =
                                                                  Colors.white;
                                                            });
                                                          }
                                                        },
                                                        child: Container(
                                                          width: sizeBox,
                                                          height: sizeBox,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: color6,
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              6,
                                                            ),
                                                          ),
                                                          child: widget
                                                                      .isTicket &&
                                                                  widget.bannerColor ==
                                                                      color6
                                                              ? Center(
                                                                  child: Icon(
                                                                    FontAwesomeIcons
                                                                        .check,
                                                                    color: Colors
                                                                        .white,
                                                                    size: width *
                                                                        0.009,
                                                                  ),
                                                                )
                                                              : Container(),
                                                        ),
                                                      ),
                                                      // * 7
                                                      GestureDetector(
                                                        onTap: () {
                                                          if (widget.isTicket ==
                                                                  false ||
                                                              widget.bannerColor !=
                                                                  color7) {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  true;
                                                              widget.bannerColor =
                                                                  color7;
                                                            });
                                                          } else {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  false;
                                                              widget.bannerColor =
                                                                  Colors.white;
                                                            });
                                                          }
                                                        },
                                                        child: Container(
                                                          width: sizeBox,
                                                          height: sizeBox,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: color7,
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              5,
                                                            ),
                                                          ),
                                                          child: widget
                                                                      .isTicket &&
                                                                  widget.bannerColor ==
                                                                      color7
                                                              ? Center(
                                                                  child: Icon(
                                                                    FontAwesomeIcons
                                                                        .check,
                                                                    color: Colors
                                                                        .white,
                                                                    size: width *
                                                                        0.009,
                                                                  ),
                                                                )
                                                              : Container(),
                                                        ),
                                                      ),
                                                      // * 8
                                                      GestureDetector(
                                                        onTap: () {
                                                          if (widget.isTicket ==
                                                                  false ||
                                                              widget.bannerColor !=
                                                                  color8) {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  true;
                                                              widget.bannerColor =
                                                                  color8;
                                                            });
                                                          } else {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  false;
                                                              widget.bannerColor =
                                                                  Colors.white;
                                                            });
                                                          }
                                                        },
                                                        child: Container(
                                                          width: sizeBox,
                                                          height: sizeBox,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: color8,
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              5,
                                                            ),
                                                          ),
                                                          child: widget
                                                                      .isTicket &&
                                                                  widget.bannerColor ==
                                                                      color8
                                                              ? Center(
                                                                  child: Icon(
                                                                    FontAwesomeIcons
                                                                        .check,
                                                                    color: Colors
                                                                        .white,
                                                                    size: width *
                                                                        0.009,
                                                                  ),
                                                                )
                                                              : Container(),
                                                        ),
                                                      ),
                                                      // * 9
                                                      GestureDetector(
                                                        onTap: () {
                                                          if (widget.isTicket ==
                                                                  false ||
                                                              widget.bannerColor !=
                                                                  color9) {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  true;
                                                              widget.bannerColor =
                                                                  color9;
                                                            });
                                                          } else {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  false;
                                                              widget.bannerColor =
                                                                  Colors.white;
                                                            });
                                                          }
                                                        },
                                                        child: Container(
                                                          width: sizeBox,
                                                          height: sizeBox,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: color9,
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              5,
                                                            ),
                                                          ),
                                                          child: widget
                                                                      .isTicket &&
                                                                  widget.bannerColor ==
                                                                      color9
                                                              ? Center(
                                                                  child: Icon(
                                                                    FontAwesomeIcons
                                                                        .check,
                                                                    color: Colors
                                                                        .white,
                                                                    size: width *
                                                                        0.009,
                                                                  ),
                                                                )
                                                              : Container(),
                                                        ),
                                                      ),
                                                      // * 10
                                                      GestureDetector(
                                                        onTap: () {
                                                          if (widget.isTicket ==
                                                                  false ||
                                                              widget.bannerColor !=
                                                                  color10) {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  true;
                                                              widget.bannerColor =
                                                                  color10;
                                                            });
                                                          } else {
                                                            setState(() {
                                                              widget.isTicket =
                                                                  false;
                                                              widget.bannerColor =
                                                                  Colors.white;
                                                            });
                                                          }
                                                        },
                                                        child: Container(
                                                          width: sizeBox,
                                                          height: sizeBox,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: color10,
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              5,
                                                            ),
                                                          ),
                                                          child: widget
                                                                      .isTicket &&
                                                                  widget.bannerColor ==
                                                                      color10
                                                              ? Center(
                                                                  child: Icon(
                                                                    FontAwesomeIcons
                                                                        .check,
                                                                    color: Colors
                                                                        .white,
                                                                    size: width *
                                                                        0.009,
                                                                  ),
                                                                )
                                                              : Container(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * 0.02,
                                              height: height * 0.04,
                                              child: const FittedBox(
                                                child: Text(
                                                  "ó",
                                                  style: TextStyle(
                                                      color: mainColor),
                                                ),
                                              ),
                                            ),
                                            // * Image banner
                                            Container(
                                              height: height * 0.13,
                                              width: width * 0.18,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: mainColor,
                                                ),
                                              ),
                                              // * Icon
                                              child: SizedBox(
                                                width: width * 0.14,
                                                height: height * 0.08,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    SizedBox(
                                                      width: width * 0.05,
                                                      height: height * 0.045,
                                                      child: const FittedBox(
                                                        child: Icon(
                                                          FontAwesomeIcons
                                                              .squarePlus,
                                                          color: mainColor,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: width * 0.13,
                                                      height: height * 0.03,
                                                      child: const FittedBox(
                                                        child: Text(
                                                          "Sube la foto para el banner",
                                                          style: TextStyle(
                                                            color: mainColor,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // * Categorie
                                      Container(
                                        height: height * 0.1,
                                        alignment: Alignment.topCenter,
                                        margin:
                                            EdgeInsets.only(top: height * 0.01),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            // * Education
                                            GestureDetector(
                                              onTap: () {
                                                if (widget.isEducation) {
                                                } else {
                                                  setState(() {
                                                    widget.isEducation = true;
                                                    widget.isAdvice = false;
                                                    widget.isSport = false;
                                                    widget.isOffTopic = false;
                                                    widget.isForum = false;
                                                  });
                                                }
                                              },
                                              child: Container(
                                                width: width * 0.07,
                                                height: height * 0.045,
                                                decoration: BoxDecoration(
                                                  color: widget.isEducation
                                                      ? mainColor
                                                      : Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.3),
                                                      spreadRadius: 1,
                                                      blurRadius: 4,
                                                      offset:
                                                          const Offset(0, 4),
                                                    ),
                                                  ],
                                                ),
                                                child: Stack(children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: width * 0.006,
                                                    ),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Icon(
                                                      FontAwesomeIcons.check,
                                                      color: Colors.white,
                                                      size: height * 0.015,
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "Educación",
                                                      style: TextStyle(
                                                        color:
                                                            widget.isEducation
                                                                ? Colors.white
                                                                : Colors.black,
                                                        fontSize:
                                                            height * 0.015,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )
                                                ]),
                                              ),
                                            ),
                                            // * Advice
                                            GestureDetector(
                                              onTap: () {
                                                if (widget.isAdvice) {
                                                } else {
                                                  setState(() {
                                                    widget.isEducation = false;
                                                    widget.isAdvice = true;
                                                    widget.isSport = false;
                                                    widget.isOffTopic = false;
                                                    widget.isForum = false;
                                                  });
                                                }
                                              },
                                              child: Container(
                                                width: width * 0.07,
                                                height: height * 0.045,
                                                decoration: BoxDecoration(
                                                  color: widget.isAdvice
                                                      ? mainColor
                                                      : Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.3),
                                                      spreadRadius: 1,
                                                      blurRadius: 4,
                                                      offset:
                                                          const Offset(0, 4),
                                                    ),
                                                  ],
                                                ),
                                                child: Stack(children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: width * 0.009,
                                                    ),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Icon(
                                                      FontAwesomeIcons.check,
                                                      color: Colors.white,
                                                      size: height * 0.015,
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "Avisos",
                                                      style: TextStyle(
                                                        color: widget.isAdvice
                                                            ? Colors.white
                                                            : Colors.black,
                                                        fontSize:
                                                            height * 0.015,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )
                                                ]),
                                              ),
                                            ),
                                            // * Sports
                                            GestureDetector(
                                              onTap: () {
                                                if (widget.isSport) {
                                                } else {
                                                  setState(() {
                                                    widget.isEducation = false;
                                                    widget.isAdvice = false;
                                                    widget.isSport = true;
                                                    widget.isOffTopic = false;
                                                    widget.isForum = false;
                                                  });
                                                }
                                              },
                                              child: Container(
                                                width: width * 0.07,
                                                height: height * 0.045,
                                                decoration: BoxDecoration(
                                                  color: widget.isSport
                                                      ? mainColor
                                                      : Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.3),
                                                      spreadRadius: 1,
                                                      blurRadius: 4,
                                                      offset:
                                                          const Offset(0, 4),
                                                    ),
                                                  ],
                                                ),
                                                child: Stack(children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: width * 0.009,
                                                    ),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Icon(
                                                      FontAwesomeIcons.check,
                                                      color: Colors.white,
                                                      size: height * 0.015,
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "Deportes",
                                                      style: TextStyle(
                                                        color: widget.isSport
                                                            ? Colors.white
                                                            : Colors.black,
                                                        fontSize:
                                                            height * 0.015,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )
                                                ]),
                                              ),
                                            ),
                                            // * Off Topic
                                            GestureDetector(
                                              onTap: () {
                                                if (widget.isOffTopic) {
                                                } else {
                                                  setState(() {
                                                    widget.isEducation = false;
                                                    widget.isAdvice = false;
                                                    widget.isSport = false;
                                                    widget.isOffTopic = true;
                                                    widget.isForum = false;
                                                  });
                                                }
                                              },
                                              child: Container(
                                                width: width * 0.07,
                                                height: height * 0.045,
                                                decoration: BoxDecoration(
                                                  color: widget.isOffTopic
                                                      ? mainColor
                                                      : Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.3),
                                                      spreadRadius: 1,
                                                      blurRadius: 4,
                                                      offset:
                                                          const Offset(0, 4),
                                                    ),
                                                  ],
                                                ),
                                                child: Stack(children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: width * 0.009,
                                                    ),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Icon(
                                                      FontAwesomeIcons.check,
                                                      color: Colors.white,
                                                      size: height * 0.015,
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "Off-Topic",
                                                      style: TextStyle(
                                                        color: widget.isOffTopic
                                                            ? Colors.white
                                                            : Colors.black,
                                                        fontSize:
                                                            height * 0.015,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )
                                                ]),
                                              ),
                                            ),
                                            // * Foros
                                            GestureDetector(
                                              onTap: () {
                                                if (widget.isForum) {
                                                } else {
                                                  setState(() {
                                                    widget.isEducation = false;
                                                    widget.isAdvice = false;
                                                    widget.isSport = false;
                                                    widget.isOffTopic = false;
                                                    widget.isForum = true;
                                                  });
                                                }
                                              },
                                              child: Container(
                                                width: width * 0.07,
                                                height: height * 0.045,
                                                decoration: BoxDecoration(
                                                  color: widget.isForum
                                                      ? mainColor
                                                      : Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                    color: Colors.black,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.3),
                                                      spreadRadius: 1,
                                                      blurRadius: 4,
                                                      offset:
                                                          const Offset(0, 4),
                                                    ),
                                                  ],
                                                ),
                                                child: Stack(children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                      left: width * 0.009,
                                                    ),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Icon(
                                                      FontAwesomeIcons.check,
                                                      color: Colors.white,
                                                      size: height * 0.015,
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Text(
                                                      "Foros",
                                                      style: TextStyle(
                                                        color: widget.isForum
                                                            ? Colors.white
                                                            : Colors.black,
                                                        fontSize:
                                                            height * 0.015,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )
                                                ]),
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
                          ),
                          // * Create Button
                          Center(
                            child: Container(
                              height: height * 0.035,
                              width: width * 0.1,
                              decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "Crear Hilo",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.015,
                                ),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
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
