part of 'blocked_agents_bloc.dart';

@freezed
class BlockedAgentsEvent with _$BlockedAgentsEvent {
  const factory BlockedAgentsEvent.blocked() = _Blocked;
}
