import 'package:flutter/material.dart';
import 'package:wallet/constants.dart';
import 'package:wallet/utils/my_box.dart';
import 'package:wallet/utils/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myBackgroundColor,
        appBar: myAppBar,
        body: Row(children: [
          myDrawer,
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return MyBox();
                          }),
                    ),
                  ),

                  // tiles below it

                  Expanded(
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return MyTile();
                          }))
                ],
              )),
          Expanded(child: Container(color: Colors.pink))
        ]));
  }
}
