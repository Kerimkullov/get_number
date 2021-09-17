part of 'blockagent_bloc.dart';

@freezed
class BlockagentEvent with _$BlockagentEvent {
  const factory BlockagentEvent.block(bool block, int id) = _Block;
}
