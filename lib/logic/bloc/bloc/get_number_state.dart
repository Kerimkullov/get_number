part of 'get_number_bloc.dart';

@freezed
class GetNumberState with _$GetNumberState {
  const factory GetNumberState.initial() = _Initial;
  const factory GetNumberState.loaded(String message) = _Loaded;
  const factory GetNumberState.error(CatchException exception) = _Error;
}
