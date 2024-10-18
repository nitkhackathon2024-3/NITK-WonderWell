import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wisdom_well/core/data/models/user_model.dart';
import 'package:wisdom_well/core/exceptions/app_exception.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/services/authenticator.dart';
import 'package:wisdom_well/core/services/service_locator.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Authenticator _authenticator = sl<Authenticator>();

  AuthBloc() : super(const AuthLoading()) {
    on<_AuthCheckRequested>(_onCheckStatus);
    on<_SignIn>(_onSignIn);
    on<_SignUp>(_onSignUp);
    on<_SignOut>(_onSignOut);
    _authenticator.addListener(() {
      add(const _AuthCheckRequested());
    });
  }

  @override
  Future<void> close() {
    _authenticator.dispose();
    return super.close();
  }

  Future<void> _onCheckStatus(
      _AuthCheckRequested event, Emitter<AuthState> emit) async {
    if (_authenticator.isAuthenticated) {
      emit(Authenticated((await _authenticator.currentUser)!));
    } else {
      emit(const Unauthenticated());
    }
  }

  Future<void> _onSignIn(_SignIn event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    try {
      await _authenticator.signIn(email: event.email, password: event.password);
    } on AppException catch (e) {
      emit(AuthError(AppException.handleException(e)!));
    }
  }

  Future<void> _onSignUp(_SignUp event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    try {
      await _authenticator.signUp(
        username: event.username,
        email: event.email,
        password: event.password,
      );
    } on AppException catch (e) {
      emit(AuthError(AppException.handleException(e)!));
    }
  }

  Future<void> _onSignOut(_SignOut event, Emitter<AuthState> emit) async {
    emit(const AuthLoading());
    await _authenticator.signOut();
  }
}
