import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portal_de_estudiantes/utils/portal_corlos.dart';
import 'package:portal_de_estudiantes/widgets/sidebar.dart';
import 'package:portal_de_estudiantes/widgets/topbar.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          TopBar(),
          Row(
            children: [
              SideBar(
                pageIndex: 3,
              ),
            ],
          )
        ],
      ),
    );
  }
}
