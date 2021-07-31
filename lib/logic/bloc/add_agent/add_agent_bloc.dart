import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_number/helper/catch_exceptions.dart';
import 'package:get_number/logic/repositories/repository.dart';

part 'add_agent_event.dart';
part 'add_agent_state.dart';
part 'add_agent_bloc.freezed.dart';

class AddAgentBloc extends Bloc<AddAgentEvent, AddAgentState> {
  UserRepository repository = UserRepository();
  AddAgentBloc() : super(_Initial());

  @override
  Stream<AddAgentState> mapEventToState(AddAgentEvent event) async* {
    yield* event.map(addAgent: _addAgent);
  }

  Stream<AddAgentState> _addAgent(_AddAgent event) async* {
    yield AddAgentState.initial();
    try {
      String model = await repository.addAgent(event.msisdn, event.name);
      yield AddAgentState.loaded(model);
    } catch (e) {
      yield AddAgentState.field(CatchException.convertException(e));
    }
  }
}
