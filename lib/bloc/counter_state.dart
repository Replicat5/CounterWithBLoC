part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  final int counter;

  const CounterState(this.counter);
}

class CounterInitial extends CounterState {
  const CounterInitial(int counter) : super(counter);
}

class CounterIncrementedState extends CounterState {
  const CounterIncrementedState(int counter) : super(counter);
}

class CounterDecremnetedState extends CounterState {
  const CounterDecremnetedState(int counter) : super(counter);
}

class CounterClearState extends CounterState {
  const CounterClearState(int counter) : super(counter);
}
