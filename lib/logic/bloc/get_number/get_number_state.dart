part of 'get_number_bloc.dart';

@freezed
class GetNumberState with _$GetNumberState {
  const factory GetNumberState.initial() = _Initial;
  const factory GetNumberState.loading() = _Loading;
  const factory GetNumberState.loaded(GetNumberModel model) = _Loaded;
  const factory GetNumberState.error(CatchException exception) = _Error;
}
