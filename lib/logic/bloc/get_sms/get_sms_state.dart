part of 'get_sms_bloc.dart';

@freezed
class GetSmsState with _$GetSmsState {
  const factory GetSmsState.initial() = _Initial;
  const factory GetSmsState.loaded(List<SmsModel> model) = _Loaded;
  const factory GetSmsState.error(CatchException mes) = _Error;
}
