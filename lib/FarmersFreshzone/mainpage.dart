import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Sections/AppSpeciality.dart';
import 'Sections/BlogPosts.dart';
import 'Sections/BottomBarConvex.dart';
import 'Sections/Categories.dart';
import 'Sections/CategoryHeading.dart';
import 'Sections/CertficicationWidget.dart';
import 'Sections/EndingofHome.dart';
import 'Sections/FirstScection.dart';
import 'Sections/Gourmentsaladposter.dart';
import 'Sections/Image_Slider_FrountPge.dart';
import 'Sections/Viewmorewidget.dart';
import 'Sections/moreProducts.dart';
import 'Widgets/DropDownLocation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FarmersFreshZone(),
  ));
}

class FarmersFreshZone extends StatefulWidget {
  const FarmersFreshZone({Key? key}) : super(key: key);

  @override
  State<FarmersFreshZone> createState() => _FarmersFreshZoneState();
}

class _FarmersFreshZoneState extends State<FarmersFreshZone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned:  true,
            backgroundColor: Colors.green[500],
            title: Text(
              "Farmers Fresh Zone",
              style: GoogleFonts.capriola(
                textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
              ),
            ),
            actions: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined,size: 18,),
                  SizedBox(width: 2,),
                  DropDownLocation()
                ],
              )
            ],
            bottom: AppBar(
              backgroundColor: Colors.green[500],
              elevation: 0,
              title:SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.black38,
                    hintText: "Search for Vegetables,Fruits...",
                    hintStyle: TextStyle(color: Colors.black38)
                  ),
                ),
              ) ,
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              FirstSeccion(),
              ImageSlider(),
              AppDetails(),
              CtegoryHeading(S: 'Shop By Category'),
              Categories(),
              GourmetWidget(),
              CtegoryHeading(S: 'Best Selling Products'),
              ProductsBestSelling(),
              Certfication(),
              CtegoryHeading(S: 'Our BlogPost'),
              BlogPosts(),
              viewmore(S: 'VIEW MORE BLOGS'),
              CtegoryHeading(S: 'Our CustomerFeedback'),
              EndingOfHome(),
              BottomBrConvex(),
            ]
          ),)

        ],
      )
    );
  }
}
