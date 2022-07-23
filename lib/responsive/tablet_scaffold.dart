import 'package:flutter/material.dart';
import 'package:wallet/constants.dart';
import 'package:wallet/utils/my_box.dart';
import 'package:wallet/utils/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        backgroundColor: myBackgroundColor,
        drawer: myDrawer,
        body: Column(
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
        ));
  }
}
