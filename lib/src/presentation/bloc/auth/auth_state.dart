part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState({
    this.status=AuthStatus.initial,
  });

  final AuthStatus status;
  AuthState copyWith({
    AuthStatus? status,
  }) {
    return AuthState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [status];
}

enum AuthStatus { initial, loading, succes, failure }
