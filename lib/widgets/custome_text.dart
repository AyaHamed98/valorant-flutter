import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key,required this.txt,

    this.fotSize=22,this.isBold=false,
    this.maxLines,this.color=Colors.white,this.overflow}) : super(key: key);
  final String txt;
  final double fotSize;
  final bool isBold;
  final int? maxLines;
  final Color? color;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: fotSize,
        fontWeight: isBold?FontWeight.bold:FontWeight.normal,
        color:color
      ),
      maxLines:maxLines ,
      overflow:overflow,
    );
  }
}
