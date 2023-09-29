// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';


// part 'auth_state.dart';

// class AuthCubit extends Cubit<AuthState> {
//   AuthCubit() : super(AuthInitial());
//   void signup({required String emailAddress, required String password })async{
//   try {
//     final credential =await FirebaseAuth.instance.createUserWithEmailAndPassword(
//     email: emailAddress,
//     password: password,
//   );
//     emit(AuthSuccess());
  
// } on FirebaseAuthException catch (e) {
//   // if (e.code == 'weak-password') {
//   //   print('The password provided is too weak.');
//   // } else if (e.code == 'email-already-in-use') {
//   //   print('The account already exists for that email.');
//   // }
//   debugPrint(e.code);
//   emit(AuthFailure(errMessage: e.message.toString()));
// } catch (e) {
//   debugPrint(e.toString());
//   emit(AuthFailure(errMessage: e.toString()));
// }
//   }

// }
// //final credential =