import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({Key? key,required this.imagePath}) : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return CircleAvatar(
      radius: width*.35,
      backgroundImage: AssetImage(imagePath)
    );
  }
}
