import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<CounterStarted>(_onStarted);
    on<CounterIncremented>(_onIncremented);
    on<CounterDecremented>(_onDecremented);
    on<CounterBrightnessIncremented>(_onBrightnessIncremented);
  }

  void _onStarted(CounterStarted event, Emitter<CounterState> emit) {}

  void _onIncremented(CounterIncremented event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _onDecremented(CounterDecremented event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }

  void _onBrightnessIncremented(
      CounterBrightnessIncremented event, Emitter<CounterState> emit) {
    emit(state.copyWith(brightness: state.brightness + 10));
  }
}
