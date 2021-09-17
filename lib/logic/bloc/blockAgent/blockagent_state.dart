part of 'blockagent_bloc.dart';

@freezed
class BlockagentState with _$BlockagentState {
  const factory BlockagentState.initial() = _Initial;
  const factory BlockagentState.loading() = _Loading;
  const factory BlockagentState.loaded(String massage) = _Loaded;
  const factory BlockagentState.error(CatchException exception) = _Error;
}
