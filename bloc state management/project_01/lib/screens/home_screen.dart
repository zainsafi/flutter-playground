import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_01/bloc/counter_bloc/counter_bloc.dart';
import 'package:project_01/bloc/counter_bloc/counter_event.dart';
import 'package:project_01/bloc/counter_bloc/counter_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter bloc counter app')),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            if (state is CounterInitialState) {
              return Text(
                state.counter.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              );
            }

            if (state is CounterUpdatedState) {
              return Text(
                state.counter.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              );
            }

            return const SizedBox();
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              // BlocProvider.of<CounterBloc>(
              //   context,
              // ).add(IncrementCounterEvent());

              // or

              context.read<CounterBloc>().add(IncrementCounterEvent());
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCounterEvent());

              // or
              // BlocProvider.of<CounterBloc>(
              //   context,
              // ).add(DecrementCounterEvent());
            },
            child: Text('-', style: TextStyle(fontSize: 30)),
          ),
        ],
      ),
    );
  }
}
