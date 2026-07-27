import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_02/bloc/auth_bloc.dart';
import 'package:project_02/screens/builder_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: BlocProvider(create: (context) => AuthBloc(), child: BuilderBloc()),

      // you can use multiblocprovider just like provider when needed
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthBloc()),
          // you can add more BlocProviders here.
        ],
        child: BuilderBloc(),
      ),
    );
  }
}
