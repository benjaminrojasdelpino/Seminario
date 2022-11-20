import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.1,
      decoration: const BoxDecoration(
        color: mainColor,
      ),
      child: Row(
        children: [
          // * Spacing
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.05,
            ),
          ),
          // * Spacing
          SizedBox(
            width: width * 0.2,
            height: height * 0.9,
            child: const FittedBox(
              fit: BoxFit.contain,
              child: Text(
                "PORTAL DE ESTUDIANTES",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // * Spacing
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.07,
            ),
          ),
          // * Search Bar
          SizedBox(
            width: width * 0.3,
            child: Center(
              child: Container(
                width: width * 0.3,
                height: height * 0.04,
                decoration: BoxDecoration(
                  color: placeholdColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // * Icon
                    SizedBox(
                      width: width * 0.02,
                      child: Icon(
                        Icons.search,
                        color: activeColor,
                        size: height * 0.025,
                      ),
                    ),
                    // * Form
                    Container(
                      alignment: Alignment.center,
                      width: width * 0.27,
                      height: height * 0.04,
                      child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            bottom: height * 0.005,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // * Spacing
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.1,
            ),
          ),
          // * Profile
          SizedBox(
            width: width * 0.2,
            height: height * 0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: height * 0.07,
                  height: height * 0.07,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img/profile.jpg'),
                    ),
                  ),
                ),
                Container(
                  width: width * 0.15,
                  height: height * 0.08,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Matias Espinoza Aranguiz",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.02,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
