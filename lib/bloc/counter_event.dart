part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CounterClearEvent extends CounterEvent {}

class CounterIncrementEvent extends CounterEvent {}

class CounterDecrementEvent extends CounterEvent {}
