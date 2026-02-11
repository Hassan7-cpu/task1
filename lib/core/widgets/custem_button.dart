// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustemButton extends StatelessWidget {
   CustemButton({super.key, required this.tilte, this.onTap,required this.color});
final String tilte;
final Function()? onTap;
Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width/2,
        height: 70,
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            tilte,
style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}