import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:portal_de_estudiantes/models/publish_model.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';
import 'package:portal_de_estudiantes/widgets/elipsisbutton_publis.dart';

class PublishCard extends StatefulWidget {
  int cont = 0;
  double width;
  double height;
  PublishModel publish;
  PublishCard({
    Key? key,
    required this.width,
    required this.height,
    required this.publish,
  }) : super(key: key);

  @override
  State<PublishCard> createState() => _PublishCardState();
}

class _PublishCardState extends State<PublishCard> {
  Color upVote = activeColor;
  Color downVote = activeColor;
  bool firstTime = true;

  @override
  Widget build(BuildContext context) {
    if (firstTime) {
      widget.cont = widget.publish.score;
      firstTime = false;
    }

    void _upScore() {
      if (widget.cont == widget.publish.score ||
          widget.cont + 1 == widget.publish.score) {
        upVote = Colors.white;
        downVote = activeColor;

        setState(() {
          widget.cont = widget.publish.score + 1;
        });
      } else {
        upVote = activeColor;
        downVote = activeColor;
        setState(() {
          widget.cont = widget.publish.score;
        });
      }
    }

    void _downScore() {
      if (widget.cont == widget.publish.score ||
          widget.cont - 1 == widget.publish.score) {
        downVote = Colors.white;
        upVote = activeColor;

        setState(() {
          widget.cont = widget.publish.score - 1;
        });
      } else {
        upVote = activeColor;
        downVote = activeColor;
        setState(() {
          widget.cont = widget.publish.score;
        });
      }
    }

    return Container(
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // * Margin to Top
          Padding(
            padding: EdgeInsets.only(
              top: widget.height * 0.01,
            ),
          ),
          // * Score - Title - DropDown
          SizedBox(
            width: widget.width * 0.9,
            height: widget.height * 0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // * Score
                Container(
                  width: widget.width * 0.035,
                  height: widget.height * 0.08,
                  decoration: BoxDecoration(
                    color: secColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // * Up Score
                      GestureDetector(
                        onTap: _upScore,
                        child: SizedBox(
                          width: widget.width * 0.02,
                          height: widget.height * 0.02,
                          child: FittedBox(
                            child: Icon(
                              FontAwesomeIcons.angleUp,
                              color: upVote,
                            ),
                          ),
                        ),
                      ),
                      // * Score
                      Container(
                        alignment: Alignment.center,
                        width: widget.width * 0.03,
                        height: widget.height * 0.03,
                        child: Text(
                          widget.cont.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: widget.height * 0.018,
                          ),
                        ),
                      ),
                      // * Down Score
                      GestureDetector(
                        onTap: _downScore,
                        child: SizedBox(
                          width: widget.width * 0.02,
                          height: widget.height * 0.02,
                          child: FittedBox(
                            child: Icon(
                              FontAwesomeIcons.angleDown,
                              color: downVote,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: widget.width * 0.7,
                  height: widget.height * 0.05,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // * Image or Icon
                      SizedBox(
                        width: widget.width * 0.05,
                        height: widget.height * 0.05,
                        child: const FittedBox(
                          child: Icon(
                            FontAwesomeIcons.solidUserCircle,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // * Name
                      Container(
                        width: widget.width * 0.1,
                        height: widget.height * 0.05,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.publish.user.name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: blackText,
                            fontSize: widget.height * 0.02,
                          ),
                        ),
                      ),
                      // * PLane Text
                      Container(
                        height: widget.height * 0.05,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "publicó en:",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: blackText,
                            fontSize: widget.height * 0.02,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // * Thread Name
                      Container(
                        margin: EdgeInsets.only(left: widget.width * 0.015),
                        width: widget.width * 0.15,
                        height: widget.height * 0.05,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "# ${widget.publish.thread.name}",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: activeColor,
                            fontSize: widget.height * 0.02,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: widget.width * 0.015,
                  height: widget.height * 0.07,
                  alignment: Alignment.topRight,
                  child: ElipsisButton(),
                ),
              ],
            ),
          ),
          // * Margin to Top
          Padding(
            padding: EdgeInsets.only(
              top: widget.height * 0.015,
            ),
          ),
          // * Publish Content
          Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.topLeft,
            width: widget.width * 0.85,
            decoration: BoxDecoration(
                color: placeholdColor, borderRadius: BorderRadius.circular(5)),
            child: Text(
              widget.publish.publishContent,
              style: TextStyle(
                color: blackText,
                fontSize: widget.height * 0.02,
              ),
            ),
          ),
          // * Margin to Top
          Padding(
            padding: EdgeInsets.only(
              top: widget.height * 0.01,
            ),
          ),
          // * Divider
          SizedBox(
            width: widget.width * 0.85,
            child: const Divider(
              color: Colors.grey,
              height: 1,
            ),
          ),
          // * Margin to Top
          Padding(
            padding: EdgeInsets.only(
              top: widget.height * 0.01,
            ),
          ),
          // * Buttons
          SizedBox(
            width: widget.width * 0.85,
            height: widget.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // * Comment Button
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: widget.width * 0.2,
                    height: widget.height * 0.05,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: widget.height * 0.05 / 4,
                          left: widget.height * 0.01,
                          child: Icon(
                            FontAwesomeIcons.commentMedical,
                            size: widget.width * 0.02,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: widget.width * 0.2,
                          height: widget.height * 0.05,
                          alignment: Alignment.center,
                          child: Text(
                            "Comentar",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: widget.height * 0.014),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // * Margin to Top
                Padding(
                  padding: EdgeInsets.only(
                    left: widget.height * 0.05,
                  ),
                ),
                // * Share Button
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: widget.width * 0.2,
                    height: widget.height * 0.05,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: widget.height * 0.05 / 4,
                          left: widget.height * 0.01,
                          child: Icon(
                            Icons.share,
                            size: widget.width * 0.02,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: widget.width * 0.2,
                          height: widget.height * 0.05,
                          alignment: Alignment.center,
                          child: Text(
                            "Compartir",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: widget.height * 0.014),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // * Margin to Bottom
          Padding(
            padding: EdgeInsets.only(
              bottom: widget.height * 0.01,
            ),
          ),
        ],
      ),
    );
  }
}
