import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {}

class InitialState extends HomeState {
  @override
  List<Object?> get props => [];
}

class UpdateNumberState extends HomeState {
  @override
  List<Object?> get props => [x];

  int x;
  UpdateNumberState(this.x);
}
