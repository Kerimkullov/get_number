import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_number/helper/catch_exceptions.dart';
import 'package:get_number/logic/repositories/repository.dart';

part 'get_number_event.dart';
part 'get_number_state.dart';
part 'get_number_bloc.freezed.dart';

class GetNumberBloc extends Bloc<GetNumberEvent, GetNumberState> {
  UserRepository repository = UserRepository();
  GetNumberBloc() : super(_Initial());

  @override
  Stream<GetNumberState> mapEventToState(
    GetNumberEvent event,
  ) async* {
    yield* event.map(getNumber: _getNumber);
  }

  Stream<GetNumberState> _getNumber(_GetNumber event) async* {
    yield GetNumberState.initial();
    try {
      String message = await repository.getNumber();
      yield GetNumberState.loaded(message);
    } catch (e) {
      yield GetNumberState.error(CatchException.convertException(e));
    }
  }
}
