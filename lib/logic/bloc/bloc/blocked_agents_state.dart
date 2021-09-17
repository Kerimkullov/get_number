part of 'blocked_agents_bloc.dart';

@freezed
class BlockedAgentsState with _$BlockedAgentsState {
  const factory BlockedAgentsState.initial() = _Initial;
  const factory BlockedAgentsState.loaded(List<BlockedAgentModel> model) =
      _Loaded;
  const factory BlockedAgentsState.field(CatchException exception) = _Field;
}
