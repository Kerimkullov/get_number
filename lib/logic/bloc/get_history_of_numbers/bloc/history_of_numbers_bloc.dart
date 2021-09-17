import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_number/helper/catch_exceptions.dart';
import 'package:get_number/logic/model/history_number_model.dart';
import 'package:get_number/logic/repositories/repository.dart';

part 'history_of_numbers_event.dart';
part 'history_of_numbers_state.dart';
part 'history_of_numbers_bloc.freezed.dart';

class HistoryOfNumbersBloc
    extends Bloc<HistoryOfNumbersEvent, HistoryOfNumbersState> {
  UserRepository repository = UserRepository();
  HistoryOfNumbersBloc() : super(_Initial());

  @override
  Stream<HistoryOfNumbersState> mapEventToState(
    HistoryOfNumbersEvent event,
  ) async* {
    yield* event.map(
        getHistoryNumbers: _getHistoryNumber,
        getSearchNumber: _getSearchNumber);
  }

  Stream<HistoryOfNumbersState> _getHistoryNumber(
      _GetHistoryNumbers event) async* {
    yield HistoryOfNumbersState.initial();
    try {
      yield HistoryOfNumbersState.loading();
      List<HistoryNumberModels> numbers = await repository.getHistoryNumber();
      yield HistoryOfNumbersState.loaded(numbers);
    } catch (e) {
      yield HistoryOfNumbersState.error(CatchException.convertException(e));
    }
  }

  Stream<HistoryOfNumbersState> _getSearchNumber(
      _GetSearchNumber event) async* {
    try {
      String searchNumber = await repository.searchNumber(event.msisdn);
      yield HistoryOfNumbersState.search(searchNumber);
    } catch (e) {
      yield HistoryOfNumbersState.searchError(
          CatchException.convertException(e));
    }
  }
}
