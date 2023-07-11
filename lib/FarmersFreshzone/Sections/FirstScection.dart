import 'package:flutter/material.dart';

class FirstSeccion extends StatelessWidget {
  var chooseCategory = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nuts",
    "Packed"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(chooseCategory.length, (index) =>
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 5),
                child: ElevatedButton(
                  child: Text(chooseCategory[index],
                    style: TextStyle(color: Colors.green[500]),
                  ),
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[100],
                    shape: StadiumBorder(
                      side: BorderSide(color: Colors.green,)
                    )
                  ),
                ),
              ),

          )
      ),
    );
  }
}
