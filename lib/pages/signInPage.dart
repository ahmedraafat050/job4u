import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:job4u/business_logic/cubit/register_cubit/register_cubit.dart';
import 'package:job4u/pages/homePage.dart';
import 'package:job4u/pages/signUpPage.dart';
import 'package:job4u/services/colors.dart';

import '../business_logic/cubit/login_cubit/login_cubit.dart';
import '../services/TextField.dart';

var _formKey = new GlobalKey<FormState>();

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<LoginCubit>(context);
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) =>  homePage()));
        }
        if (state is LoginErrorState) {
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
              "Sign In",
              style: TextStyle(
                color: secColor,
                fontFamily: "Righteous",
                fontSize: 23,
              ),
            ),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 24.0),
                      child: Image(
                        width: 70,
                        height: 70,
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                        image: AssetImage("assets/icons/Icon.png"),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
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
                      controller: passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          icon: cubit.suffixIcon,
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
                      validator: (value) =>
                      value!.isEmpty ? 'Password is empty ' : null,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          print(emailController.text);
                          print(passwordController.text);
                        }
                      },
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            cubit.userLogin(
                                email: emailController.text.trim(),
                                password: passwordController.text.trim());
                          }
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                           ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BlocProvider(
                                      create: (context) => RegisterCubit(),
                                      child: SignUpPage(),
                                    )));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0x00ffffff),
                        shadowColor: const Color(0x00ffffff),
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    )
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
