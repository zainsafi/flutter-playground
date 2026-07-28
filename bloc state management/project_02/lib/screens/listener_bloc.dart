import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_02/bloc/auth_bloc.dart';
import 'package:project_02/bloc/auth_event.dart';
import 'package:project_02/bloc/auth_state.dart';
import 'package:project_02/screens/consumer_bloc.dart';

class ListenerBloc extends StatefulWidget {
  const ListenerBloc({super.key});

  @override
  State<ListenerBloc> createState() => _ListenerBlocState();
}

class _ListenerBlocState extends State<ListenerBloc> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listener Bloc'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider(
                    create: (context) => AuthBloc(),
                    child: ConsumerBloc(),
                  ),
                ),
              );
            },
            icon: Icon(Icons.navigate_next, size: 28),
          ),
        ],
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthLoadingState) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Wait loging in...')));
          }

          if (state is AuthSuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green.shade400,
                content: Text('login successfully'),
              ),
            );
            emailController.clear();
            passwordController.clear();
          }

          if (state is AuthFailureState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red.shade400,
                content: Text(state.msg),
              ),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: 'Enter your email e.g abc@gmail.com',

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              TextField(
                controller: passwordController,
                keyboardType: TextInputType.text,
                autocorrect: false,

                decoration: InputDecoration(
                  hintText: 'Enter your password e.g 123456',

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  // BlocProvider.of<AuthBloc>(context).add(
                  //   LoginEvent(emailController.text, passwordController.text),
                  // );

                  ///////////////////////// OR /////////////////////
                  context.read<AuthBloc>().add(
                    LoginEvent(emailController.text, passwordController.text),
                  );
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
