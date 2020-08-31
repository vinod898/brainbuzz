import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PromoCodes extends StatefulWidget {
  @override
  _PromoCodesState createState() => _PromoCodesState();
}

class _PromoCodesState extends State<PromoCodes> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("PROMO CODE/OFFERS")),
      body: Container(
        child: Text("PROMO CODE/OFFERS"),
      ),
    );
  }
}
