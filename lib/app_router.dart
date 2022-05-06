import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job4u/business_logic/cubit/auth_cubit/auth_cubit.dart';
import 'package:job4u/pages/homePage.dart';
import 'package:job4u/pages/loadingPage.dart';
import 'package:job4u/pages/signInPage.dart';
import 'package:job4u/pages/signUpPage.dart';

import 'constant/comstants.dart';

class AppRouter {
  late AuthCubit loginCubit;


  AppRouter() {
    late String initialRoute;
    loginCubit = AuthCubit();

  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loading:
        return MaterialPageRoute(builder: (_) => loadingPage());

      case signInPage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: SignInPage(),
                ));
      case signUpPage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: SignUpPage(),
                ));

      case home:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: homePage(),
                ));

    }
  }
}
