part of 'agent_list_bloc.dart';

@freezed
class AgentListEvent with _$AgentListEvent {
  const factory AgentListEvent.agentList() = _AgentList;
  const factory AgentListEvent.deleteAgent(int id) = _DeleteAgent;
}
