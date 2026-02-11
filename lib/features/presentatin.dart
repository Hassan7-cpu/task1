import 'package:flutter/material.dart';
import 'package:task1/core/constant/app_color.dart';
import 'package:task1/core/widgets/custem_button.dart' show CustemButton;

class Presentatin extends StatelessWidget {
  const Presentatin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            CustemButton(
              tilte: 'Gold',
              color: AppColor.primaryColor,
              onTap: () {},
            ),
            SizedBox(height: 20,),
            CustemButton(
              tilte: 'Silver',
              color: AppColor.secondaryColor,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
