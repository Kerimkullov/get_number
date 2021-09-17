import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_number/helper/catch_exceptions.dart';
import 'package:get_number/logic/model/blocked_agent_model.dart';
import 'package:get_number/logic/repositories/repository.dart';

part 'blocked_agents_event.dart';
part 'blocked_agents_state.dart';
part 'blocked_agents_bloc.freezed.dart';

class BlockedAgentsBloc extends Bloc<BlockedAgentsEvent, BlockedAgentsState> {
  UserRepository repository = UserRepository();
  BlockedAgentsBloc() : super(_Initial());

  @override
  Stream<BlockedAgentsState> mapEventToState(
    BlockedAgentsEvent event,
  ) async* {
    yield* event.map(blocked: _blockedAgentList);
  }

  Stream<BlockedAgentsState> _blockedAgentList(_Blocked event) async* {
    yield BlockedAgentsState.initial();
    try {
      List<BlockedAgentModel> model = await repository.getBlockedAgentList();
      yield BlockedAgentsState.loaded(model);
    } catch (e) {
      yield BlockedAgentsState.field(CatchException.convertException(e));
    }
  }
}
