
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  double h;
  double w;
  double r;
  Color color;
  String title;
  void Function() onTap;

   Buttons({
    super.key,
    required this.color,
    required this.h,
    required this.w,
    required this.title,
    required this.r,
     required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(r),
          color: color,
        ),
        child: Center(
          child: Text(title,style:  TextStyle(
            fontSize: 18,
            color:Theme.of(context).colorScheme.tertiary,
            fontWeight: FontWeight.w600
          ),),
        ),
      ),
    );
  }
}
