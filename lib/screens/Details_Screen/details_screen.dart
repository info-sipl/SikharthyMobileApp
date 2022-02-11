import 'package:flutter/material.dart';
import 'package:sikahrthy_app/models/Product.dart';
import 'package:sikahrthy_app/screens/Details_Screen/Components/body.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  DetailsScreen({this.product});
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffa000),
      appBar: AppBar(
        title: Text('Sikharthy Infotech'),
        backgroundColor: Color(0xFFff8f00),
      ),
      body: Body(
        product: widget.product,
      ),
    );
  }
}
