import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_01/cubit/counter_cubit.dart';
import 'package:project_01/cubit/counter_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cubit')),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          if (state is CounterInitialState) {
            return Center(
              child: Text(
                state.counter.toString(),
                style: Theme.of(context).textTheme.displayLarge,
              ),
            );
          }
          if (state is CounterUpdatedState) {
            return Center(
              child: Text(
                state.counter.toString(),
                style: Theme.of(context).textTheme.displayLarge,
              ),
            );
          }

          return const SizedBox();
        },
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              // BlocProvider.of<CounterCubit>(context).incrementCounter();

              ////////////// OR ///////////////

              context.read<CounterCubit>().incrementCounter();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              // BlocProvider.of<CounterCubit>(context).decrementCounter();

              ////////////// OR ///////////////

              context.read<CounterCubit>().decrementCounter();
            },
            child: Icon(CupertinoIcons.minus),
          ),
        ],
      ),
    );
  }
}
