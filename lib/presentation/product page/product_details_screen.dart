import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teaminterval_test/core/constants.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    required this.image,
    required this.name,
    required this.instructions,
  }) : super(key: key);

  final image;
  final name;
  final instructions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.appThemeColor,
        title: Text(name),
      ),
      body: Column(
        children: [
          Hero(
            tag: 'dash',
            child: Image(image: NetworkImage(image)),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Instructions',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(instructions),
              ],
            ),
          )
        ],
      ),
    );
  }
}

