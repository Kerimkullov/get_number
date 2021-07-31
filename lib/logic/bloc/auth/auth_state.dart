part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.field(CatchException exception) = _Field;
  const factory AuthState.loaded(AuthModel model) = _Loaded;
}
