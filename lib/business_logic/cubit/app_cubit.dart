import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());


  Future<void> logOut()  async {
    FirebaseAuth.instance.signOut();
  }

  User getLoginUser() {
    User firebaseUser = FirebaseAuth.instance.currentUser! ;
    return firebaseUser;
  }
}
