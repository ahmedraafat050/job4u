import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job4u/business_logic/cubit/app_cubit.dart';
import 'package:job4u/pages/drawer.dart';
import 'package:job4u/pages/homePage.dart';
import 'package:job4u/pages/loadingPage.dart';
import 'package:job4u/pages/signInPage.dart';
import 'package:job4u/pages/signUpPage.dart';
import 'business_logic/cubit/login_cubit/login_cubit.dart';
import 'business_logic/cubit/register_cubit/register_cubit.dart';
import 'constant/comstants.dart';

class AppRouter {
  late LoginCubit loginCubit;
  late RegisterCubit registerCubit;

  AppRouter() {
    late String initialRoute;
    loginCubit = LoginCubit();
    registerCubit = RegisterCubit();
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loading:
        return MaterialPageRoute(builder: (_) => loadingPage());

      case signInPage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => LoginCubit(),
                  child: SignInPage(),
                ));
      case signUpPage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => RegisterCubit(),
                  child: SignUpPage(),
                ));

      case home:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AppCubit(),
                  child: homePage(),
                ));

      // case drawer:
      //   return MaterialPageRoute(
      //       builder: (_) => BlocProvider(
      //             create: (context) => AppCubit(),
      //             child: DrawerMenu(),
      //           ));
    }
  }
}
