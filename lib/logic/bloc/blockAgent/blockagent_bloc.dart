import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_number/helper/catch_exceptions.dart';
import 'package:get_number/logic/repositories/repository.dart';

part 'blockagent_event.dart';
part 'blockagent_state.dart';
part 'blockagent_bloc.freezed.dart';

class BlockagentBloc extends Bloc<BlockagentEvent, BlockagentState> {
  UserRepository repository = UserRepository();
  BlockagentBloc() : super(_Initial());

  @override
  Stream<BlockagentState> mapEventToState(
    BlockagentEvent event,
  ) async* {
    yield* event.map(block: _block);
  }

  Stream<BlockagentState> _block(_Block event) async* {
    yield BlockagentState.initial();
    try {
      yield BlockagentState.loading();
      String massage = await repository.blockAgent(event.block, event.id);
      print("kjdsfhkjfg $massage");
      yield BlockagentState.loaded(massage);
    } catch (e) {
      yield BlockagentState.error(CatchException.convertException(e));
    }
  }
}
