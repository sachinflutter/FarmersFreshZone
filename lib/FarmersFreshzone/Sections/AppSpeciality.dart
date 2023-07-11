import 'package:flutter/material.dart';

class AppDetails extends StatelessWidget {
  var iconpics = [
    "assets/pictures/Clock.png",
    "assets/pictures/tracing.png",
    "assets/pictures/localSourcing.png"
  ];
  var iconText = ["30 MINUTE POLICY", "TRACEABILITY", "LOCAL SOURCING"];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 241, 245, 241),
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Color.fromARGB(255, 183, 182, 182))),
      child: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
          3,
          (index) => Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage(iconpics[index]),
                  fit: BoxFit.cover,
                  height: 40,
                ),
              ),
              Text(
                iconText[index],
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
