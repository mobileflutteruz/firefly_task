import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firefly_task/src/domain/repository/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepo) : super(AuthState()) {
    on<AuthEvent>((event, emit) {});
    on<SignInEvent>(_signIn);
    on<SignUpEvent>(_signUp);
    on<SignOutEvent>(_signOut);
  }

  final AuthRepository authRepo;

  _signIn(SignInEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));

    try {
      final result = await authRepo.signIn(event.email, event.password);
      if (result == null) {
        return emit(state.copyWith(status: AuthStatus.failure));
      }
      emit(state.copyWith(status: AuthStatus.failure));
    } catch (e) {
      debugPrint("_signIn Error------------------------------------${e.toString()}");

      emit(state.copyWith(status: AuthStatus.failure));
    }
  }

  _signUp(SignUpEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.loading));
    bool result = await InternetConnectionChecker().hasConnection;

    print(" await InternetConnectionChecker().hasConnection;--------------------${result}");

    try {
      final result = await authRepo.signUp(email:event.email,password:  event.password);
      if (result == null) {
        return emit(state.copyWith(status: AuthStatus.failure));
      }
      emit(state.copyWith(status: AuthStatus.succes));
    } catch (e) {
      debugPrint("_signUp Error------------------------------------${e.toString()}");
      emit(state.copyWith(status: AuthStatus.failure));
    }
  }

  _signOut(SignOutEvent event, Emitter<AuthState> emit) {}
}
