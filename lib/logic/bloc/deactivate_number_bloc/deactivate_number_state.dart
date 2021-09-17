part of 'deactivate_number_bloc.dart';

@freezed
class DeactivateNumberState with _$DeactivateNumberState {
  const factory DeactivateNumberState.initial() = _Initial;
  const factory DeactivateNumberState.loading() = _Loading;
  const factory DeactivateNumberState.loaded(dynamic massage) = _Loaded;
  const factory DeactivateNumberState.error(CatchException exception) = _Error;
}
