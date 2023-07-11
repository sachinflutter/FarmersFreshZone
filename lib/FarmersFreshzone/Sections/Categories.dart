import 'package:flutter/material.dart';
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}


class _CategoriesState extends State<Categories> {
  var categoryNames = [
    "Offers",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Packed Flavors",
    "Gourmet Salads",
    "Juices",
  ];
  var categoryFoodPics=[
    "assets/pictures/offers.png",
    "assets/pictures/fruits.png",
    "assets/pictures/Exotic.png",
    "assets/pictures/freshcut.png",
    "assets/pictures/nutritionChargers.png",
    "assets/pictures/packedFlavors.png",
    "assets/pictures/gourmetSalads.png",
    "assets/pictures/juices.png"
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 3,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      childAspectRatio: .9,
      padding: EdgeInsets.zero,
      children: List.generate(8, (index) =>Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () => print(categoryNames[index]),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0 ,// soften the Shadow
                  spreadRadius:2.0 ,//extend the shadow
                  offset:Offset(
                    5.0,//Move to Right Horizontally
                   2.0, // move to bottom vertically
                  )
                )
              ],
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255,243, 245, 243)
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image(
                    image: AssetImage(categoryFoodPics[index],
                    ),
                    width: double.infinity,
                    height: 95,
                    fit: BoxFit.cover,
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(categoryNames[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 13,
                    ),

                  ),
                )
              ],
            ),
          ),
        ),
      ) ),
    );
  }
}
