import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: example(),
  ));
}
class example extends StatelessWidget {
  const example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.green,
          title: Text("Farmers FreshZone"),
          actions: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                Text("Kochi", style: TextStyle(color: Colors.white)),
                Icon(
                  Icons.arrow_downward_rounded,
                  color: Colors.white,
                )
              ],
            ),
          ],
          bottom:PreferredSize(child: TextField(), preferredSize: Size(100,60) ,
        ),
        ),
      ]
    );
  }
}

