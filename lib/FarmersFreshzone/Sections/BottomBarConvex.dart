import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
class BottomBrConvex extends StatefulWidget {
  const BottomBrConvex({Key? key}) : super(key: key);

  @override
  State<BottomBrConvex> createState() => _BottomBrConvexState();
}

class _BottomBrConvexState extends State<BottomBrConvex> {
  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
        top: -12,
        color: Colors.black54,
        activeColor: Colors.green[700],
        backgroundColor: Colors.white,
        items: [
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.shopping_cart, title: 'Cart'),
      TabItem(icon: Icons.account_circle_outlined, title: 'Account'),
    ]);
  }
}
