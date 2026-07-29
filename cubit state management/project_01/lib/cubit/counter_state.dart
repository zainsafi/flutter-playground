abstract class CounterState {
  final int counter;
  CounterState(this.counter);
}

class CounterInitialState extends CounterState {
  CounterInitialState() : super(0);
}

class CounterUpdatedState extends CounterState {
  CounterUpdatedState(super.counter);
}
