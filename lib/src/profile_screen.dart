import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';
import 'package:portal_de_estudiantes/widgets/sidebar.dart';
import 'package:portal_de_estudiantes/widgets/topbar.dart';

import '../widgets/title_page.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                pageIndex: 5,
              ),
              // * Content
              Container(
                margin: EdgeInsets.only(left: width * 0.02),
                width: width * 0.8,
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
                      title: "Mi Perfil",
                      width: width * 0.6,
                      heigth: height * 0.9,
                    ),
                    // * Margin Top
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.02,
                      ),
                    ),
                    // * Content
                    Container(
                      width: width * 0.7,
                      height: height * 0.65,
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
                      child: Column(
                        children: [
                          // * Margin Top
                          Padding(
                            padding: EdgeInsets.only(
                              top: height * 0.05,
                            ),
                          ),
                          // * Avatar and Forms
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    width: width * 0.1,
                                    height: width * 0.1,
                                    child: Stack(
                                      children: [
                                        // * Avatar
                                        SizedBox(
                                          width: width * 0.1,
                                          height: width * 0.1,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(90),
                                            child: const Image(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'assets/img/profile.jpg'),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          top: 0,
                                          child: Container(
                                            width: width * 0.025,
                                            height: width * 0.025,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: activeColor,
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                            ),
                                            child: Icon(
                                              FontAwesomeIcons.camera,
                                              color: Colors.white,
                                              size: width * 0.01,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // * Margin Top
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: height * 0.01,
                                    ),
                                  ),
                                  // * Change Pass Button
                                  Container(
                                    width: width * 0.1,
                                    height: height * 0.035,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: activeColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      "Cambiar Contraseña",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: height * 0.015,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // * Forms
                              Container(
                                width: width * 0.4,
                                height: height * 0.55,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // * Name
                                    Row(
                                      children: [
                                        Container(
                                          width: width * 0.08,
                                          height: height * 0.04,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Nombre:",
                                            style: TextStyle(
                                              color: blackText,
                                              fontSize: height * 0.025,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: width * 0.32,
                                          height: height * 0.04,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFc0c0c0),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "   Matias Alonso Espinoza Aranguiz",
                                            style: TextStyle(
                                              color: activeColor,
                                              fontSize: height * 0.015,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // * Rut
                                    Row(
                                      children: [
                                        Container(
                                          width: width * 0.08,
                                          height: height * 0.04,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Rut:",
                                            style: TextStyle(
                                              color: blackText,
                                              fontSize: height * 0.025,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: width * 0.32,
                                          height: height * 0.04,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFc0c0c0),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "   20.182.315-3",
                                            style: TextStyle(
                                              color: activeColor,
                                              fontSize: height * 0.015,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // * Carrer
                                    Row(
                                      children: [
                                        Container(
                                          width: width * 0.08,
                                          height: height * 0.04,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Carrera:",
                                            style: TextStyle(
                                              color: blackText,
                                              fontSize: height * 0.025,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: width * 0.32,
                                          height: height * 0.04,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFc0c0c0),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "   Ingienería Civil en Informática",
                                            style: TextStyle(
                                              color: activeColor,
                                              fontSize: height * 0.015,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // * Semestre
                                    Row(
                                      children: [
                                        Container(
                                          width: width * 0.08,
                                          height: height * 0.04,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Semestre:",
                                            style: TextStyle(
                                              color: blackText,
                                              fontSize: height * 0.025,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: width * 0.32,
                                          height: height * 0.04,
                                          decoration: BoxDecoration(
                                            color: placeholdColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "   Matias Alonso Espinoza Aranguiz",
                                                style: TextStyle(
                                                  color: activeColor,
                                                  fontSize: height * 0.015,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  right: width * 0.01,
                                                ),
                                                child: Icon(
                                                  FontAwesomeIcons.caretDown,
                                                  color: activeColor,
                                                  size: height * 0.02,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    // * Cellphone
                                    Row(
                                      children: [
                                        Container(
                                          width: width * 0.08,
                                          height: height * 0.04,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Telefono:",
                                            style: TextStyle(
                                              color: blackText,
                                              fontSize: height * 0.025,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: width * 0.32,
                                          height: height * 0.04,
                                          decoration: BoxDecoration(
                                            color: placeholdColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "   +56993644989",
                                                style: TextStyle(
                                                  color: activeColor,
                                                  fontSize: height * 0.015,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  right: width * 0.01,
                                                ),
                                                child: Icon(
                                                  FontAwesomeIcons.pen,
                                                  color: activeColor,
                                                  size: height * 0.02,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    // * Correo
                                    Row(
                                      children: [
                                        Container(
                                          width: width * 0.08,
                                          height: height * 0.04,
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Correo:",
                                            style: TextStyle(
                                              color: blackText,
                                              fontSize: height * 0.025,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: width * 0.32,
                                          height: height * 0.04,
                                          decoration: BoxDecoration(
                                            color: placeholdColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "   matias.espinozaaranguiz@gmail.com",
                                                style: TextStyle(
                                                  color: activeColor,
                                                  fontSize: height * 0.015,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  right: width * 0.01,
                                                ),
                                                child: Icon(
                                                  FontAwesomeIcons.pen,
                                                  color: activeColor,
                                                  size: height * 0.02,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    // * Description
                                    Row(
                                      children: [
                                        Container(
                                          width: width * 0.08,
                                          height: height * 0.1,
                                          child: Text(
                                            "Descripción:",
                                            style: TextStyle(
                                              color: blackText,
                                              fontSize: height * 0.025,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 5),
                                          width: width * 0.32,
                                          height: height * 0.1,
                                          decoration: BoxDecoration(
                                            color: placeholdColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "   Me gusta el futbol y los videojuegos, me gusta interactuar con la comunidad",
                                                style: TextStyle(
                                                  color: activeColor,
                                                  fontSize: height * 0.015,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  right: width * 0.01,
                                                ),
                                                child: Icon(
                                                  FontAwesomeIcons.pen,
                                                  color: activeColor,
                                                  size: height * 0.02,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: height * 0.03,
                                      ),
                                    ),
                                    Container(
                                      width: width * 0.1,
                                      height: height * 0.035,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: activeColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "Guardar Perfil",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: height * 0.015,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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
