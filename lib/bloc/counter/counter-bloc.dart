import 'package:bloc/bloc.dart';
import 'package:flutter_counter_bloc/bloc/counter/counter-event.dart';
import 'package:flutter_counter_bloc/bloc/counter/counter-state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  @override
  CounterState get initialState => CounterState.initial();

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    final _currentCounterState = currentState;

    if (event is IncrementCounterEvent) {
      yield CounterState(counter: _currentCounterState.counter + 1);
    } else if (event is DecrementCounterEvent) {
      yield CounterState(counter: _currentCounterState.counter - 1);
    }
  }

  void IncrementCounter() {
    dispatch(IncrementCounterEvent());
  }

  void DecrementCounter() {
    dispatch(DecrementCounterEvent());
  }
}
