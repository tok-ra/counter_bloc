part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CounterStarted extends CounterEvent {}

class CounterIncremented extends CounterEvent {}

class CounterDecremented extends CounterEvent {}

class CounterBrightnessIncremented extends CounterEvent {}
