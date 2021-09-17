part of 'deactivate_number_bloc.dart';

@freezed
class DeactivateNumberEvent with _$DeactivateNumberEvent {
  const factory DeactivateNumberEvent.deactivate(String msisdn) = _Deactivate;
}
