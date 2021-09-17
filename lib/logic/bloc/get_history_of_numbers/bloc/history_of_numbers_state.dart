part of 'history_of_numbers_bloc.dart';

@freezed
class HistoryOfNumbersState with _$HistoryOfNumbersState {
  const factory HistoryOfNumbersState.initial() = _Initial;
  const factory HistoryOfNumbersState.loading() = _Loading;
  const factory HistoryOfNumbersState.loaded(List<HistoryNumberModels> model) =
      _Loaded;
  const factory HistoryOfNumbersState.search(String msisdn) = _Search;
  const factory HistoryOfNumbersState.error(CatchException exception) = _Error;
  const factory HistoryOfNumbersState.searchError(CatchException exception) =
      _SearchError;
}
