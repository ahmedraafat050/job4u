import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job4u/constant/comstants.dart';
import 'app_router.dart';
import 'constant/bloc_observer.dart';

late String initialRoute;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initialRoute = loading;

  BlocOverrides.runZoned(
    () {
      runApp(job4u(
        appRouter: AppRouter(),
      ));
    },
    blocObserver: MyBlocObserver(),
  );
}

class job4u extends StatelessWidget {
  final AppRouter appRouter;

  job4u({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Rubik',
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: initialRoute,
    );
  }
}
