import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_number/helper/catch_exceptions.dart';
import 'package:get_number/logic/model/agent_model.dart';
import 'package:get_number/logic/repositories/repository.dart';

part 'agent_list_event.dart';
part 'agent_list_state.dart';
part 'agent_list_bloc.freezed.dart';

class AgentListBloc extends Bloc<AgentListEvent, AgentListState> {
  UserRepository repository = UserRepository();
  AgentListBloc() : super(_Initial());

  @override
  Stream<AgentListState> mapEventToState(AgentListEvent event) async* {
    yield* event.map(agentList: _agentList, deleteAgent: _deleteAgent);
  }

  Stream<AgentListState> _agentList(_AgentList event) async* {
    yield AgentListState.initial();
    try {
      List<AgentModel> model = await repository.getAgentList();
      yield AgentListState.loaded(model);
    } catch (e) {
      yield AgentListState.field(CatchException.convertException(e));
    }
  }

  Stream<AgentListState> _deleteAgent(_DeleteAgent event) async* {
    yield AgentListState.initial();
    try {
      String model = await repository.deleteAgent(event.id);
      yield AgentListState.delete(model);
    } catch (e) {
      yield AgentListState.field(CatchException.convertException(e));
    }
  }
}
