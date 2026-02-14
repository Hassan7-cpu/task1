import 'package:task1/features/silver/data/models/silver_model.dart';

abstract class SilverState {}
 
class SilverInitialState extends SilverState {}
class SilverLoadingState extends SilverState {}
class SilverSuccessState extends SilverState {
 final SilverModel silverModel;
 SilverSuccessState(this.silverModel);
}
class SilverErrorState extends SilverState {
  final String message;
  SilverErrorState(this.message);
}