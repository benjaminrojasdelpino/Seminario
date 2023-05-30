import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';
import 'package:portal_de_estudiantes/widgets/sidebar.dart';
import 'package:portal_de_estudiantes/widgets/title_page.dart';
import 'package:portal_de_estudiantes/widgets/topbar.dart';
import 'package:table_calendar/table_calendar.dart';

class PlannerScreen extends StatefulWidget {
  const PlannerScreen({Key? key}) : super(key: key);

  @override
  State<PlannerScreen> createState() => _PlannerScreenState();
}

class _PlannerScreenState extends State<PlannerScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          TopBar(),
          Row(
            children: [
              SideBar(
                pageIndex: 6,
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
                      title: "Mi Planner",
                      width: width * 0.6,
                      heigth: height * 0.9,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: height * 0.02,
                      ),
                    ),
                    Container(
                      width: width * 0.7,
                      height: height * 0.5,
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
                      child: SizedBox(
                        width: width * 0.65,
                        height: height * 0.7,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: height * 0.02,
                              ),
                            ),
                            Center(
                              child: TableCalendar(
                                firstDay: DateTime.utc(2023, 01, 01),
                                lastDay: DateTime.utc(2026, 12, 31),
                                focusedDay: DateTime.now(),
                                headerStyle: const HeaderStyle(
                                  titleCentered: true,
                                  formatButtonVisible: false,
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
            ],
          )
        ],
      ),
    );
  }
}
