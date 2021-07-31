part of 'add_agent_bloc.dart';

@freezed
class AddAgentEvent with _$AddAgentEvent {
  const factory AddAgentEvent.addAgent(String msisdn, String name) = _AddAgent;
}
