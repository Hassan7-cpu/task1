import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/gold/data/repo/gold_repo.dart';
import 'package:task1/features/gold/presentation/view/cubit/gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  final GoldRepo goldRepo;

  GoldCubit(this.goldRepo) : super(GoldInitialState());

  Future<void> getGold() async {
    emit(GoldLoadingState());

    final result = await goldRepo.getGold();

    result.fold(
      (error) => emit(GoldErrorState(error)),
      (goldModel) => emit(GoldSuccessState(goldModel)),
    );
  }
}
