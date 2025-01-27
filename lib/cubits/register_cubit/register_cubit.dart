import 'package:bloc/bloc.dart';
import 'package:chat/cubits/register_cubit/register_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';



class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  Future<User?> login(String email, String password) async {
    emit(RegisterLoading());
    try {
      UserCredential user= await
      FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      emit(RegisterSuccess(user.user!));
      return user.user;
    } catch (e) {
      emit(RegisterError(
        message: e.toString(),
      ));
    }
  }
}