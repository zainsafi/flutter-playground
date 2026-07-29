import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_01/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterInitialState());

  void incrementCounter() {
    emit(CounterUpdatedState(state.counter + 1));
  }

  void decrementCounter() {
    if (state.counter > 0) {
      emit(CounterUpdatedState(state.counter - 1));
    }
  }
}
