import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc()..add(CounterStarted()),
      child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Color.fromRGBO(
              state.brightness,
              state.brightness,
              state.brightness,
              1,
            ),
            body: Column(
              children: [
                const Spacer(),
                Center(
                  child: Text(
                    "${state.counter}",
                    style: const TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          //CounterBloc bloc = BlocProvider.of<CounterBloc>(context);
                          CounterBloc bloc = context.read<CounterBloc>();

                          bloc.add(CounterIncremented());
                        },
                        child: const Icon(Icons.add),
                      ),
                      const SizedBox(height: 16),
                      FloatingActionButton(
                        onPressed: () {
                          CounterBloc bloc = context.read<CounterBloc>();

                          bloc.add(CounterDecremented());
                        },
                        child: const Icon(Icons.minimize),
                      ),
                      const SizedBox(height: 16),
                      FloatingActionButton(
                        onPressed: () {
                          CounterBloc bloc = context.read<CounterBloc>();

                          bloc.add(CounterBrightnessIncremented());
                        },
                        child: const Icon(Icons.change_circle),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
