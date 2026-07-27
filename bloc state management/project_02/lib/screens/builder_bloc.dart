import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_02/bloc/auth_bloc.dart';
import 'package:project_02/bloc/auth_event.dart';
import 'package:project_02/bloc/auth_state.dart';
import 'package:project_02/screens/listener_bloc.dart';

class BuilderBloc extends StatefulWidget {
  const BuilderBloc({super.key});

  @override
  State<BuilderBloc> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BuilderBloc> {
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
        title: Text('Builder Bloc'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider(
                    create: (context) => AuthBloc(),
                    child: ListenerBloc(),
                  ),
                ),
              );
            },
            icon: Icon(Icons.navigate_next, size: 28),
          ),
        ],
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthLoadingState) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is AuthSuccessState) {
            return Center(child: Text('Login Successful'));
          }

          if (state is AuthFailureState) {
            return Center(child: Text(state.msg));
          }
          return Padding(
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
                    
                    if (state is AuthSuccessState) {
                      emailController.clear();
                      passwordController.clear();
                    }
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
