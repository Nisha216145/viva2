import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "multiplication table",
        ),
        actions:  [
          Icon(Icons.shopping_cart),
          SizedBox(width: 18,
          ),
          Icon(Icons.favorite_border_outlined),
          SizedBox(
            width: 18,
          ),
        ],
      ),
    );
  }
}

