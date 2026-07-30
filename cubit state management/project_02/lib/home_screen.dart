import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_02/cubit/auth_cubit.dart';
import 'package:project_02/cubit/auth_states.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      appBar: AppBar(title: Text('cubit')),

      body: BlocConsumer<AuthCubit, AuthStates>(
        builder: (context, state) {
          if (state is AuthLoadingState) {
            return Center(child: CircularProgressIndicator());
          }

          if (state is AuthSuccessState) {
            return Center(child: Text('Login Successfully'));
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
                    // BlocProvider.of<AuthCubit>(
                    //   context,
                    // ).login(emailController.text, passwordController.text);

                    ////////////// OR ///////////////

                    context.read<AuthCubit>().login(
                      emailController.text,
                      passwordController.text,
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
        listener: (context, state) {
          if (state is AuthErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red.shade500,
                content: Text(state.msg),
              ),
            );
          }
        },
      ),
    );
  }
}
