import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/core/constant/app_fonts.dart';
import 'package:task1/features/silver/data/repo/silver_repo.dart';
import 'package:task1/features/silver/presentation/view/cubit/silver_cubit.dart';
import 'package:task1/features/silver/presentation/view/cubit/silver_state.dart';
import 'package:task1/features/silver/presentation/view/widgets/row_price.dart';

class SilverView extends StatelessWidget {
  const SilverView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SilverCubit(SilverRepo())..getSilver(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Silver", style: AppFonts.textBold24),
          centerTitle: true,
        ),
        body: BlocBuilder<SilverCubit, SilverState>(
          builder: (context, state) {
           if (state is SilverLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is SilverSuccessState) {
              return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://tse2.mm.bing.net/th/id/OIP.Z2L7TMtbCwP75MD0shvx8gHaGF?rs=1&pid=ImgDetMain&o=7&rm=3",
                  width: 300,
                  height: 300,
                ),
                SizedBox(height: 20),
                RowPrice(price: state.silverModel.price.toStringAsFixed(2), currency: 'EGP'),
              ],
            );
            } else if (state is SilverErrorState) {
              return Center(child: Text(state.message, style: AppFonts.textBold18));
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
