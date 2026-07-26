import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_01/bloc/counter_bloc/counter_event.dart';
import 'package:project_01/bloc/counter_bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitialState()) {
    on<IncrementCounterEvent>((event, emit) {
      emit(CounterUpdatedState(state.counter + 1));
    });

    on<DecrementCounterEvent>((event, emit) {
      if (state.counter > 0) {
        emit(CounterUpdatedState(state.counter - 1));
      }
    });
  }
}
