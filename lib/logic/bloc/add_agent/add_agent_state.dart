part of 'add_agent_bloc.dart';

@freezed
class AddAgentState with _$AddAgentState {
  const factory AddAgentState.initial() = _Initial;
  const factory AddAgentState.loaded(String message) = _Loaded;
  const factory AddAgentState.field(CatchException exception) = _Field;
}
