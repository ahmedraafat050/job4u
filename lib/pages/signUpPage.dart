import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:job4u/business_logic/cubit/auth_cubit/auth_cubit.dart';
import 'package:job4u/business_logic/cubit/auth_cubit/auth_cubit.dart';
import 'package:job4u/pages/homePage.dart';

import '../services/colors.dart';
var _formKey =  GlobalKey<FormState>();

class SignUpPage extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
   SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener:  (context, state) {
        if (state is UserCreateSuccessState) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  homePage()));
        }
        if (state is UserCreateErrorState) {
          Fluttertoast.showToast(
            msg: state.error,
          );
          print(state.error);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: mainColor,
            title: Text(
              "Sign Up",
              style: TextStyle(
                color: secColor,
                fontFamily: "Righteous",
                fontSize: 23,
              ),
            ),
          ),
          body: Container(
            margin: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 24.0),
                      child: Image(
                        width: 60,
                        height: 60,
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                        image: AssetImage("assets/icons/Icon.png"),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return " User name is empty ";
                        }
                        return null;
                      },
                      controller: nameController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        labelText: 'User Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      autofocus: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailController,
                      validator: (value) =>
                      value!.isEmpty ? 'please enter your email' : null,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email_outlined),
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      autofocus: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: cubit.isPasswordShown,
                      validator: (value) =>
                      value!.isEmpty ? 'please enter your password ' : null,
                      controller: passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          icon:cubit.suffixIcon,
                          onPressed: () {
                            cubit.changeSuffixIcon();
                          },
                        ),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      autofocus: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            cubit.userRegister(
                                name: nameController.text.trim(),
                                email: emailController.text.trim(),
                                password: passwordController.text.trim());
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: mainColor,
                          minimumSize: const Size(
                            60,
                            50,
                          ),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: secColor,
                            fontSize: 21,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
