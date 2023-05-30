import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portal_de_estudiantes/models/thread_model.dart';
import 'package:portal_de_estudiantes/widgets/thread_card.dart';

class SliderNewThreads extends StatelessWidget {
  double width;
  double height;

  SliderNewThreads({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: height * 0.05),
      width: width * 0.9,
      height: height * 1.1,
      child: CarouselSlider(
        items: [
          ThreadCard(
            thread: ThreadModel(
              name: "Noticias-IBC",
              color: Colors.black,
              imagePath:
                  "http://www.pucv.cl/uuaa/site/artic/20191120/imag/foto_0000000120191120085505.jpg",
              description:
                  "Enterate de las ultimas noticias en la mejor facultad de la PUCV",
            ),
          ),
          ThreadCard(
            thread: ThreadModel(
              name: "Ofertas-Laborales",
              description:
                  "Encuentra ofertas de trabajo, piensa en tu futuro y publica si quieres encontrar a  tu trabajador ideal",
              color: Colors.deepOrange,
              imagePath:
                  "https://www.colliers.com/-/media/images/colliers/asia/philippines/colliers-review/collierreview_hero_image_01312022_v2/hero_image_tondominium/hero_image_021522/hero_image_colliersviewpoint_022222.ashx?bid=0f5b3ed2a8de41f89e1a8d557e48f9f8",
            ),
          ),
          ThreadCard(
            thread: ThreadModel(
              name: "Futbol",
              description: "Las mejoras pichangas estan aca",
              color: Colors.green,
              imagePath:
                  "https://www.latercera.com/resizer/TiU6ognMAfRSJQY6u8ie6st5cxU=/900x600/smart/arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/XPCGMOURTVFWXFVHHWKGGWLS2Y.jpg",
            ),
          ),
          ThreadCard(
            thread: ThreadModel(
              name: "Conversación",
              description: "Aqui hablamos de todo...",
              color: Colors.deepPurple,
              imagePath:
                  "https://images.squarespace-cdn.com/content/v1/51bdd6cfe4b09566e1112c43/1525693092012-Z6JGMU8GS856DTUWIV3H/conversaciones+escenas+comunicaicon?format=1000w",
            ),
          ),
        ],
        options: CarouselOptions(
          viewportFraction: 0.3,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlayAnimationDuration: const Duration(seconds: 1),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
