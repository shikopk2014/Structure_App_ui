import 'package:flutter/material.dart';

class CurvedDesign extends StatelessWidget {
  final Widget? child;
  final double? height;

  const CurvedDesign({
    Key? key,
    this.height, this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:child ,
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffF3F6FA),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(60.0),
          topLeft: Radius.circular(60.0),
        ),
      ),
    );
  }
}
