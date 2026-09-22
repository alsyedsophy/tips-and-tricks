import 'dart:developer';

import 'package:flutter/material.dart';

class ShowMenu extends StatefulWidget {
  const ShowMenu({super.key});

  @override
  State<ShowMenu> createState() => _ShowMenuState();
}

class _ShowMenuState extends State<ShowMenu> {
  final GlobalKey _widgetKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //? First way
        // child: PopupMenuButton(
        //   icon: Icon(Icons.menu),
        //   // position: PopupMenuPosition.over,
        //   offset: Offset(200, -50),
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(12),
        //   ),
        //   onSelected: (value) => log(value),
        //   itemBuilder: (context) => [
        //     PopupMenuItem(onTap: () {}, value: "1", child: Text("Update")),
        //     PopupMenuItem(value: "1", child: Text("Setting"), onTap: () {}),
        //   ],
        // ),

        //? Second Way
        child: InkWell(
          key: _widgetKey,
          child: Icon(Icons.more_vert),
          onLongPress: () {
            RenderBox renderBox =
                _widgetKey.currentContext!.findRenderObject() as RenderBox;
            Offset widgetOffset = renderBox.localToGlobal(Offset.zero);
            Size widgetSize = renderBox.size;
            showMenu(
              context: context,
              position: RelativeRect.fromLTRB(
                widgetOffset.dx,
                widgetOffset.dy,
                widgetOffset.dx + widgetSize.width,
                widgetOffset.dy + widgetSize.height,
              ),
              items: [
                PopupMenuItem(child: Text('Update')),
                PopupMenuItem(child: Text('DElete')),
              ],
            );
          },
          onTap: () {},
        ),
      ),
    );
  }
}
