import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_02/cubit/auth_states.dart';

class AuthCubit extends Cubit<AuthStates>{
  AuthCubit() : super(AuthInitialState());

  void login(String email, String password) async {
    emit(AuthLoadingState());

    await Future.delayed(Duration(seconds: 3));

    if (email == 'abc@gmail.com' && password == '123456') {
      emit(AuthSuccessState());
    } else {
      emit(AuthErrorState('Invalid email or password. Try Again...'));
      await Future.delayed(Duration(seconds: 3));
      emit(AuthInitialState());
    }
  }
}
