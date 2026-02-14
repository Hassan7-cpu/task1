import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/features/silver/data/repo/silver_repo.dart';
import 'package:task1/features/silver/presentation/view/cubit/silver_state.dart';

class SilverCubit extends Cubit<SilverState> {
  final SilverRepo silverRepo;

  SilverCubit(this.silverRepo) : super(SilverInitialState());

  Future<void> getSilver() async {
    emit(SilverLoadingState());
    final result = await silverRepo.getSilver();
    result.fold(
      (error) => emit(SilverErrorState(error)),
      (silverModel) => emit(SilverSuccessState(silverModel)),
    );
  }
}
