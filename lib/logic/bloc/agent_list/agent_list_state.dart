part of 'agent_list_bloc.dart';

@freezed
class AgentListState with _$AgentListState {
  const factory AgentListState.initial() = _Initial;
  const factory AgentListState.loaded(List<AgentModel> model) = _Loaded;
  const factory AgentListState.field(CatchException exception) = _Field;
}
