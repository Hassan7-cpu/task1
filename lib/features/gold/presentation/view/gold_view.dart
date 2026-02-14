import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/core/constant/app_fonts.dart';
import 'package:task1/features/gold/data/repo/gold_repo.dart';
import 'package:task1/features/gold/presentation/view/cubit/gold_cubit.dart';
import 'package:task1/features/gold/presentation/view/cubit/gold_state.dart';
import 'package:task1/features/gold/presentation/view/widgets/row_price.dart';

class GoldView extends StatelessWidget {
  const GoldView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(GoldRepo())..getGold(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Gold", style: AppFonts.textBold24),
          centerTitle: true,
        ),
        body: BlocBuilder<GoldCubit, GoldState>(
          builder: (context, state) {
           if (state is GoldLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is GoldSuccessState) {
              return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://tse2.mm.bing.net/th/id/OIP.SDjebbjGsjMFCtwhacQ2lAAAAA?pid=ImgDet&w=194&h=139&c=7&o=7&rm=3",
                  width: 300,
                  height: 300,
                ),
                SizedBox(height: 20),
                RowPrice(price: state.goldModel.price.toStringAsFixed(2), currency: 'EGP'),
              ],
            );
            } else if (state is GoldErrorState) {
              return Center(child: Text(state.message, style: AppFonts.textBold18));
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
