import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';

class PublishBox extends StatefulWidget {
  bool isExpanded = false;
  bool isFile = true;
  double width;
  double height;

  PublishBox({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  State<PublishBox> createState() => _PublishBoxState();
}

class _PublishBoxState extends State<PublishBox> {
  bool isChecked = false;

  List<String> exampleList = [
    'Seminario-de-Título',
    'Ofertas-Laborales',
    'Generación-2016'
  ];

  List<bool> isCheckedList = List.filled(3, false);

  @override
  Widget build(BuildContext context) {
    return !widget.isExpanded
        ? GestureDetector(
            onTap: () {
              widget.isExpanded = true;
              setState(() {});
            },
            child: Container(
              width: widget.width * 0.9,
              height: widget.height * 0.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // * Avatar
                  SizedBox(
                    width: widget.height * 0.07,
                    height: widget.height * 0.07,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/img/profile.jpg'),
                      ),
                    ),
                  ),
                  // * Box
                  Container(
                    width: widget.width * 0.75,
                    height: widget.height * 0.05,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: placeholdColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "   Publica algo a tus seguidores o en tus hilos...",
                      style: TextStyle(
                        color: mainColor,
                        fontSize: widget.height * 0.02,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              widget.isExpanded = false;
              widget.isFile = true;
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 20),
              width: widget.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: widget.height * 0.1,
                    width: widget.width * 0.85,
                    child: Row(
                      children: [
                        // * Avatar
                        SizedBox(
                          width: widget.height * 0.07,
                          height: widget.height * 0.07,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                            child: const Image(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/img/profile.jpg'),
                            ),
                          ),
                        ),
                        // *
                        Container(
                          width: widget.width * 0.75,
                          height: widget.height * 0.05,
                          alignment: Alignment.center,
                          child: Text(
                            "Crear Publicación",
                            style: TextStyle(
                              color: mainColor,
                              fontSize: widget.height * 0.035,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // * Text
                  Container(
                    width: widget.width * 0.85,
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      color: placeholdColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        color: mainColor,
                        fontSize: widget.height * 0.02,
                      ),
                      maxLines: 6,
                      decoration: InputDecoration.collapsed(
                        hintText:
                            "Publica algo a tus seguidores o en tus hilos...",
                        hintStyle: TextStyle(
                          color: mainColor,
                          fontSize: widget.height * 0.02,
                        ),
                      ),
                    ),
                  ),
                  // * Files
                  widget.isFile
                      ? Container(
                          width: widget.width * 0.85,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: mainColor,
                            ),
                          ),
                          // * Icon
                          child: Stack(
                            children: [
                              SizedBox(
                                width: widget.width * 0.8,
                                height: widget.height * 0.1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: widget.width * 0.05,
                                      height: widget.height * 0.05,
                                      child: const FittedBox(
                                          child: Icon(
                                        FontAwesomeIcons.squarePlus,
                                        color: mainColor,
                                      )),
                                    ),
                                    SizedBox(
                                      width: widget.width * 0.6,
                                      height: widget.height * 0.03,
                                      child: const FittedBox(
                                        child: Text(
                                          "Sube tus archivos aquí",
                                          style: TextStyle(
                                            color: mainColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: GestureDetector(
                                  onTap: () {
                                    widget.isFile = false;
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: widget.height * 0.03,
                                    height: widget.height * 0.03,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(90),
                                      border: Border.all(
                                        color: Colors.red,
                                      ),
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.x,
                                      color: Colors.red,
                                      size: widget.height * 0.01,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                  // * Search Thread to publish
                  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: widget.width * 0.02)),
                      // * Horizontal Line
                      SizedBox(
                        width: widget.width * 0.85,
                        child: const Divider(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: widget.width * 0.02)),
                      // * Search Bar
                      SizedBox(
                        width: widget.width * 0.4,
                        child: Center(
                          child: Container(
                            width: widget.width * 0.3,
                            height: widget.height * 0.04,
                            decoration: BoxDecoration(
                              color: placeholdColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // * Icon
                                SizedBox(
                                  width: widget.width * 0.02,
                                  child: Icon(
                                    Icons.search,
                                    color: activeColor,
                                    size: widget.height * 0.025,
                                  ),
                                ),
                                // * Form
                                Container(
                                  alignment: Alignment.center,
                                  width: widget.width * 0.27,
                                  height: widget.height * 0.04,
                                  child: TextFormField(
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      hintText: "Buscar Hilo al que publicar",
                                      hintStyle:
                                          const TextStyle(color: mainColor),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                        bottom: widget.height * 0.005,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: widget.width * 0.01)),
                      Container(
                        width: widget.width * 0.3,
                        height: widget.height * 0.13,
                        decoration: BoxDecoration(
                          color: placeholdColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListView.builder(
                          itemCount: exampleList.length,
                          itemBuilder: (context, index) {
                            return SingleChildScrollView(
                              child: ListTile(
                                title: Text(
                                  "# ${exampleList[index]}",
                                  style:
                                      TextStyle(fontSize: widget.height * 0.02),
                                ),
                                trailing: isCheckedList[index]
                                    ? Icon(
                                        Icons.check_box,
                                        color: mainColor,
                                        size: widget.height * 0.03,
                                      )
                                    : Icon(
                                        Icons.check_box_outline_blank,
                                        size: widget.height * 0.03,
                                      ),
                                onTap: () {
                                  setState(() {
                                    isCheckedList[index] =
                                        !isCheckedList[index];
                                  });
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
