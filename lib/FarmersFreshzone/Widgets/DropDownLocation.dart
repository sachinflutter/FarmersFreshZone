import 'package:flutter/material.dart';

class DropDownLocation extends StatefulWidget {
  const DropDownLocation({Key? key}) : super(key: key);

  @override
  State<DropDownLocation> createState() => _DropDownLocationState();
}
  List Locations=["Kochi","kollam","Kozhikodu","Kottayam","Trivandram"];

class _DropDownLocationState extends State<DropDownLocation> {
  var dropdownVlue="Kochi";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        iconDisabledColor: Colors.white,
        iconEnabledColor: Colors.white,
        dropdownColor: Colors.green[700],
        items: List.generate(Locations.length, (index) =>
            DropdownMenuItem(
              child: Text(
                Locations[index],
                style: TextStyle(color: Colors.white),
              ),
              value: Locations[index],
            ),
        ),
        value: dropdownVlue,
        onChanged: (value) {
          setState(() {
            dropdownVlue=value.toString();
          });
        },);
  }
  // void  dropdownCallback(String  selectedvalue)
  // {
  //       setState(() {
  //         dropdownVlue=selectedvalue;
  //       });
  // }
}
