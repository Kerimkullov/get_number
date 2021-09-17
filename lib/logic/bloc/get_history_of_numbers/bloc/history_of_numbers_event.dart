part of 'history_of_numbers_bloc.dart';

@freezed
class HistoryOfNumbersEvent with _$HistoryOfNumbersEvent {
  const factory HistoryOfNumbersEvent.getHistoryNumbers() = _GetHistoryNumbers;
  const factory HistoryOfNumbersEvent.getSearchNumber(String msisdn) =
      _GetSearchNumber;
}
