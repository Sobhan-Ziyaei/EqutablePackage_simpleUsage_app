import 'package:bloc/bloc.dart';
import 'package:equtable_example_app/bloc/home_event.dart';
import 'package:equtable_example_app/bloc/home_state.dart';

class HomeBloc extends Bloc<ChangeNumberEvent, HomeState> {
  int x = 0 ;
  HomeBloc() : super(InitialState()) {
    on<ChangeNumberEvent>(
      (event, emit) {
        emit(UpdateNumberState(++x));
      },
    );
  }
}
