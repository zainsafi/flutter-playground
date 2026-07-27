import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_02/bloc/auth_event.dart';
import 'package:project_02/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitialState()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoadingState());

      await Future.delayed(Duration(seconds: 3));

      String email = event.email;
      String password = event.password;

      if (email == 'abc@gmail.com' && password == '123456') {
        emit(AuthSuccessState());
      } else {
        emit(AuthFailureState("Invalid email or password. Try Again..."));
        await Future.delayed(Duration(seconds: 3));
        emit(AuthInitialState());
      }
    });
  }
}
