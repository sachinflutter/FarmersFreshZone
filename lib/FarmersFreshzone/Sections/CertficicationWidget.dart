import 'package:flutter/material.dart';

import 'Viewmorewidget.dart';

class Certfication extends StatelessWidget {
  const Certfication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 10.0, // soften the shadow
          spreadRadius: 2.0, //extend the shadow
          offset: Offset(
            2.0, // Move to right 2  horizontally
            2.0, // Move to bottom 2 Vertically
          ),
        )
      ], color: Color.fromARGB(255, 250, 252, 250)),
      height: 150,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 25),
                  child: Text(
                    "We are working towards safe food, which is Nutri-Locked and hygenic as well. We do not...",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: viewmore(S: 'VIEW MORE'),
                )
              ],
            ),
          ),
      Expanded(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Image(
            image: AssetImage("assets/pictures/certified.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
        ],
      ),
    );
  }
}
