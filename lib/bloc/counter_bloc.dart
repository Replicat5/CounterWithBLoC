import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(0)) {
    on<CounterIncrementEvent>(_onCounterIncrementEvent);
    on<CounterDecrementEvent>(_onCounterDecrementEvent);
    on<CounterClearEvent>(_onCounterClearEvent);
  }


void _onCounterClearEvent(
      CounterEvent event, Emitter<CounterState> emit) {
    emit(CounterIncrementedState(state.counter * 0));
  }
  void _onCounterIncrementEvent(
      CounterEvent event, Emitter<CounterState> emit) {
    emit(CounterIncrementedState(state.counter+1));
  }

  void _onCounterDecrementEvent(
      CounterEvent event, Emitter<CounterState> emit) {
    emit(CounterDecremnetedState(state.counter-1));
  }
}
