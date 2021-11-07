part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  final int counter ;

  CounterState(this.counter);
}

class CounterInitial extends CounterState {
  CounterInitial(int counter) : super(counter);

}

class CounterIncrementedState extends CounterState {
  CounterIncrementedState(int counter) : super(counter);
}

class CounterDecremnetedState extends CounterState {
  CounterDecremnetedState(int counter) : super(counter);
}

class CounterClearState extends CounterState {
  CounterClearState(int counter) : super(counter);
}