import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_number/helper/catch_exceptions.dart';
import 'package:get_number/logic/model/auth_model.dart';
import 'package:get_number/logic/repositories/repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  UserRepository repository = UserRepository();
  AuthBloc() : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(getAuth: _getAuth);
  }

  Stream<AuthState> _getAuth(_GetAuth event) async* {
    yield AuthState.initial();
    try {
      yield AuthState.loading();
      AuthModel model = await repository.getUser(event.msisdn, event.pin);
      yield AuthState.loaded(model);
    } catch (e) {
      yield AuthState.field(CatchException.convertException(e));
    }
  }
}
