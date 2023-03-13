part of 'counter_bloc.dart';

enum CounterStatus {
  stable,
  loading,
}

class CounterState {
  CounterState({
    required this.status,
    required this.counter,
    required this.brightness,
  });

  final CounterStatus status;
  final int counter;
  final int brightness;

  factory CounterState.initial() {
    return CounterState(
      status: CounterStatus.stable,
      counter: 0,
      brightness: 0,
    );
  }

  CounterState copyWith({
    CounterStatus? status,
    int? counter,
    int? brightness,
  }) {
    return CounterState(
      status: status ?? this.status,
      counter: counter ?? this.counter,
      brightness: brightness ?? this.brightness,
    );
  }
}

/*
@immutable
abstract class CounterState {
  const CounterState({required this.counter});

  final int counter;
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(counter: 0);
}

class CounterStable extends CounterState {
  const CounterStable({required int counter}) : super(counter: counter);
}

class CounterLoading extends CounterState {
  const CounterLoading({required int counter}) : super(counter: counter);
}
*/