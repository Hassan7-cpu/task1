import 'package:flutter/material.dart';
import 'package:task1/core/constant/app_fonts.dart';

class RowPrice extends StatelessWidget {
  const RowPrice({super.key, required this.price, required this.currency});
 final String price;
 final String currency;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(price, style: AppFonts.textBold18),
        SizedBox(width: 15,),
        Text(currency, style: AppFonts.textBold18),
      ],
    );
  }
}
