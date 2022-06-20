import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job4u/models/user_model.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());


  void userLogin({required String email, required String password}) {

    emit(LoadingState());
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user!.email);
      print(value.user!.uid);
      emit(LoginSuccessState(value.user!.uid));
    }).catchError((error) {
      emit(LoginErrorState(error.toString()));
    });
  }


  Widget suffixIcon = Icon(Icons.remove_red_eye_outlined);
  bool isPasswordShown = false;

  void changeSuffixIcon() {
    isPasswordShown = !isPasswordShown;
    suffixIcon = isPasswordShown
        ? Icon(Icons.visibility_off)
        : Icon(Icons.remove_red_eye_outlined);
   emit(ChangeLoginPasswordMode());
  }

    Future<void> logOut() async {
    FirebaseAuth.instance.signOut();
  }

















  void userRegister({
    required String email,
    required String password,
    required String name,
  }) {
    emit(RegisterLoadingState());

    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      userCreate(
        name: name,
        email: email,
        password: password,
        uId: value.user!.uid,
      );
      emit(RegisterSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(RegisterErrorState(error.toString()));
    });
  }

  void userCreate({
    required String email,
    required String password,
    required String name,
    required String uId,
  }) {
    UserModel model = UserModel(
      name: name,
      email: email,
      password: password,
      uId: uId,
    );

    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(model.toMap())
        .then((value) {
      emit(UserCreateSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(UserCreateErrorState(error));
    });
  }















  User getLoginUser() {
    User firebaseUser = FirebaseAuth.instance.currentUser!;
return firebaseUser;
  }













  late DocumentSnapshot ds;

  Future<DocumentSnapshot> fetchUSerInfo() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {

      } else {
        print('Document does not exist on the database');
      }
      ds = documentSnapshot;
    });
    return ds;
  }


}
