part of 'get_sms_bloc.dart';

@freezed
class GetSmsEvent with _$GetSmsEvent {
  const factory GetSmsEvent.getSms(String msisdn) = _GetSms;
}
