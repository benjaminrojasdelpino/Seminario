import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portal_de_estudiantes/src/home_screen.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';

class LoginScreen extends StatefulWidget {
  TextEditingController rutController = TextEditingController();
  bool isObscure = true;
  bool isTicket = false;
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _alternateText() {
    setState(() {
      widget.isObscure = !widget.isObscure;
    });
  }

  void _alternateTicket() {
    setState(() {
      widget.isTicket = !widget.isTicket;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // * Back Image
          Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/img/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          // * Login Box
          Center(
            child: Stack(
              children: [
                Container(
                  width: width * 0.3,
                  height: height * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // * Logo xd
                      Container(
                        width: width * 0.25,
                        height: height * 0.1,
                        alignment: Alignment.center,
                        color: mainColor,
                        child: Text(
                          "PORTAL DE ESTUDIANTES",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: height * 0.035,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // * Forms
                      SizedBox(
                        width: width * 0.25,
                        height: height * 0.20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // * BoxForm Rut
                            Container(
                              width: width * 0.25,
                              height: height * 0.07,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: mainColor,
                                ),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 23, 13, 112)
                                            .withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 1,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  // * Icon
                                  SizedBox(
                                    width: width * 0.03,
                                    height: height * 0.05,
                                    child: Icon(
                                      FontAwesomeIcons.solidUserCircle,
                                      color: activeColor,
                                      size: height * 0.035,
                                    ),
                                  ),
                                  // * Rut Form
                                  SizedBox(
                                    width: width * 0.2,
                                    height: height * 0.05,
                                    child: TextFormField(
                                      controller: widget.rutController,
                                      onChanged: (value) {
                                        // * X.XXX.XXX-X CASE
                                        if (value.length == 8) {
                                          widget.rutController.text =
                                              "${value.substring(0, 7)}-${value[7]}";
                                          widget.rutController.selection =
                                              TextSelection.fromPosition(
                                            TextPosition(
                                                offset: widget
                                                    .rutController.text.length),
                                          );
                                        }
                                        // * BUG CASE
                                        if (value[value.length - 1] == "-") {
                                          widget.rutController.text = "";
                                        }
                                        // * XX.XXX.XXX-X CASE
                                        if (value.length == 10) {
                                          widget.rutController.text =
                                              "${value.substring(0, 7)}${value[8]}-${value[9]}";

                                          widget.rutController.selection =
                                              TextSelection.fromPosition(
                                            TextPosition(
                                                offset: widget
                                                    .rutController.text.length),
                                          );
                                        }
                                      },
                                      decoration: const InputDecoration(
                                        hintText:
                                            "Ingrese su RUT sin punto ni guión",
                                        hintStyle: TextStyle(),
                                        border: InputBorder.none,
                                        counterText: "",
                                      ),
                                      maxLength: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // * BoxForm Pass
                            Container(
                              width: width * 0.25,
                              height: height * 0.07,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: mainColor,
                                ),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 23, 13, 112)
                                            .withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 1,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  // * Icon
                                  SizedBox(
                                    width: width * 0.03,
                                    height: height * 0.05,
                                    child: Icon(
                                      FontAwesomeIcons.lock,
                                      color: activeColor,
                                      size: height * 0.03,
                                    ),
                                  ),
                                  // * Pass Form
                                  SizedBox(
                                    width: width * 0.17,
                                    height: height * 0.05,
                                    child: TextFormField(
                                      obscureText: widget.isObscure,
                                      decoration: const InputDecoration(
                                        hintText: "Ingrese su Contraseña",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  // * Icon Visible
                                  SizedBox(
                                    width: width * 0.03,
                                    height: height * 0.05,
                                    child: GestureDetector(
                                      onTap: () {
                                        _alternateText();
                                      },
                                      child: Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.grey,
                                        size: height * 0.03,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // * Create & Forgot
                      SizedBox(
                        width: width * 0.25,
                        height: height * 0.1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: width * 0.2,
                              height: height * 0.03,
                              alignment: Alignment.center,
                              child: Text(
                                "¿No tienes cuenta?, Create una aquí!",
                                style: TextStyle(
                                  color: activeColor,
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: width * 0.2,
                              height: height * 0.03,
                              alignment: Alignment.center,
                              child: Text(
                                "¿Olvidaste tu contraseña?, Pincha aquí!",
                                style: TextStyle(
                                  color: activeColor,
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // * Check Box and Login Button
                      SizedBox(
                        width: width * 0.25,
                        height: height * 0.12,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: width * 0.2,
                              height: height * 0.03,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // * CheckBox
                                  GestureDetector(
                                    onTap: _alternateTicket,
                                    child: Container(
                                      width: width * 0.012,
                                      height: width * 0.012,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: activeColor),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: widget.isTicket
                                          ? Icon(
                                              FontAwesomeIcons.check,
                                              color: activeColor,
                                              size: height * 0.015,
                                            )
                                          : Container(),
                                    ),
                                  ),
                                  // * Text
                                  Container(
                                    width: width * 0.18,
                                    height: width * 0.012,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Recordar mi Usuario",
                                      style: TextStyle(
                                        color: blackText,
                                        fontSize: height * 0.013,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // * Button
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            HomeScreen(),
                                    transitionDuration: Duration.zero,
                                  ),
                                );
                              },
                              child: Container(
                                width: width * 0.2,
                                height: height * 0.05,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "Ingresar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: height * 0.014),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // * Version
                Positioned(
                  bottom: 5,
                  right: 15,
                  child: Container(
                    width: width * 0.1,
                    height: height * 0.03,
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Version: 1.0.1",
                      style: TextStyle(
                        color: blackText,
                        fontSize: height * 0.015,
                      ),
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
