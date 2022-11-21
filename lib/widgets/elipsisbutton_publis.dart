import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';

class ElipsisButton extends StatelessWidget {
  ElipsisButton({Key? key}) : super(key: key);
  double height = 40;
  Color color = activeColor;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.7;

    return PopupMenuButton(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      icon: const Icon(
        FontAwesomeIcons.ellipsisVertical,
        color: activeColor,
      ),
      itemBuilder: (context) => [
        // * Products
        PopupMenuItem(
          height: height,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.centerLeft,
              color: Colors.transparent,
              width: width,
              height: height - 10,
              child: Text(
                'Reportar Publicación',
                style: TextStyle(color: color),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
