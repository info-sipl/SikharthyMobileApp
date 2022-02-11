import 'package:flutter/material.dart';

import '../../../models/Product.dart';

class Body extends StatefulWidget {
  final Product product;
  const Body({this.product});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
