import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_number/helper/catch_exceptions.dart';
import 'package:get_number/logic/model/sms_model.dart';
import 'package:get_number/logic/repositories/repository.dart';

part 'get_sms_event.dart';
part 'get_sms_state.dart';
part 'get_sms_bloc.freezed.dart';

class GetSmsBloc extends Bloc<GetSmsEvent, GetSmsState> {
  GetSmsBloc() : super(_Initial());
  UserRepository repository = UserRepository();

  @override
  Stream<GetSmsState> mapEventToState(
    GetSmsEvent event,
  ) async* {
    yield* event.map(getSms: _getSms);
  }

  Stream<GetSmsState> _getSms(_GetSms event) async* {
    yield GetSmsState.initial();
    try {
      List<SmsModel> model = await repository.getSms(event.msisdn);
      yield GetSmsState.loaded(model);
    } on DioError catch (e) {
      yield GetSmsState.error(CatchException.convertException(e));
    }
  }
}
