// Cubit is similar to Flutter Bloc, but it is simpler and
// requires less code. Unlike Bloc, Cubit does not use separate
// Events. Instead, we directly call methods inside the Cubit
// to change and emit new states.
//use the same flutter_bloc package i-e flutter pub add flutter_bloc

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_01/cubit/counter_cubit.dart';
import 'package:project_01/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: HomeScreen(),
      ),
    );
  }
}
