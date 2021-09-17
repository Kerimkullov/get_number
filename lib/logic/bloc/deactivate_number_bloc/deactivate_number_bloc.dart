import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_number/helper/catch_exceptions.dart';
import 'package:get_number/logic/repositories/repository.dart';

part 'deactivate_number_event.dart';
part 'deactivate_number_state.dart';
part 'deactivate_number_bloc.freezed.dart';

class DeactivateNumberBloc
    extends Bloc<DeactivateNumberEvent, DeactivateNumberState> {
  UserRepository repository = UserRepository();
  DeactivateNumberBloc() : super(_Initial());

  @override
  Stream<DeactivateNumberState> mapEventToState(
    DeactivateNumberEvent event,
  ) async* {
    yield* event.map(deactivate: _deactivate);
  }

  Stream<DeactivateNumberState> _deactivate(_Deactivate event) async* {
    yield DeactivateNumberState.initial();
    try {
      yield DeactivateNumberState.loading();
      print("state  jjj - $_Loading");
      dynamic massage = await repository.deactivateNumber(event.msisdn);
      print("massage jjj $massage");
      yield DeactivateNumberState.loaded(massage);
    } catch (e) {
      yield DeactivateNumberState.error(CatchException.convertException(e));
    }
  }
}
