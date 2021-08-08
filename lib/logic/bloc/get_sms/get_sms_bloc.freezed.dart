// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_sms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetSmsEventTearOff {
  const _$GetSmsEventTearOff();

  _GetSms getSms(String msisdn) {
    return _GetSms(
      msisdn,
    );
  }
}

/// @nodoc
const $GetSmsEvent = _$GetSmsEventTearOff();

/// @nodoc
mixin _$GetSmsEvent {
  String get msisdn => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msisdn) getSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msisdn)? getSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSms value) getSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSms value)? getSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetSmsEventCopyWith<GetSmsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSmsEventCopyWith<$Res> {
  factory $GetSmsEventCopyWith(
          GetSmsEvent value, $Res Function(GetSmsEvent) then) =
      _$GetSmsEventCopyWithImpl<$Res>;
  $Res call({String msisdn});
}

/// @nodoc
class _$GetSmsEventCopyWithImpl<$Res> implements $GetSmsEventCopyWith<$Res> {
  _$GetSmsEventCopyWithImpl(this._value, this._then);

  final GetSmsEvent _value;
  // ignore: unused_field
  final $Res Function(GetSmsEvent) _then;

  @override
  $Res call({
    Object? msisdn = freezed,
  }) {
    return _then(_value.copyWith(
      msisdn: msisdn == freezed
          ? _value.msisdn
          : msisdn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetSmsCopyWith<$Res> implements $GetSmsEventCopyWith<$Res> {
  factory _$GetSmsCopyWith(_GetSms value, $Res Function(_GetSms) then) =
      __$GetSmsCopyWithImpl<$Res>;
  @override
  $Res call({String msisdn});
}

/// @nodoc
class __$GetSmsCopyWithImpl<$Res> extends _$GetSmsEventCopyWithImpl<$Res>
    implements _$GetSmsCopyWith<$Res> {
  __$GetSmsCopyWithImpl(_GetSms _value, $Res Function(_GetSms) _then)
      : super(_value, (v) => _then(v as _GetSms));

  @override
  _GetSms get _value => super._value as _GetSms;

  @override
  $Res call({
    Object? msisdn = freezed,
  }) {
    return _then(_GetSms(
      msisdn == freezed
          ? _value.msisdn
          : msisdn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSms implements _GetSms {
  const _$_GetSms(this.msisdn);

  @override
  final String msisdn;

  @override
  String toString() {
    return 'GetSmsEvent.getSms(msisdn: $msisdn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSms &&
            (identical(other.msisdn, msisdn) ||
                const DeepCollectionEquality().equals(other.msisdn, msisdn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msisdn);

  @JsonKey(ignore: true)
  @override
  _$GetSmsCopyWith<_GetSms> get copyWith =>
      __$GetSmsCopyWithImpl<_GetSms>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msisdn) getSms,
  }) {
    return getSms(msisdn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msisdn)? getSms,
    required TResult orElse(),
  }) {
    if (getSms != null) {
      return getSms(msisdn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSms value) getSms,
  }) {
    return getSms(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSms value)? getSms,
    required TResult orElse(),
  }) {
    if (getSms != null) {
      return getSms(this);
    }
    return orElse();
  }
}

abstract class _GetSms implements GetSmsEvent {
  const factory _GetSms(String msisdn) = _$_GetSms;

  @override
  String get msisdn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetSmsCopyWith<_GetSms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetSmsStateTearOff {
  const _$GetSmsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loaded loaded(List<SmsModel> model) {
    return _Loaded(
      model,
    );
  }

  _Error error(CatchException mes) {
    return _Error(
      mes,
    );
  }
}

/// @nodoc
const $GetSmsState = _$GetSmsStateTearOff();

/// @nodoc
mixin _$GetSmsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SmsModel> model) loaded,
    required TResult Function(CatchException mes) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SmsModel> model)? loaded,
    TResult Function(CatchException mes)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSmsStateCopyWith<$Res> {
  factory $GetSmsStateCopyWith(
          GetSmsState value, $Res Function(GetSmsState) then) =
      _$GetSmsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetSmsStateCopyWithImpl<$Res> implements $GetSmsStateCopyWith<$Res> {
  _$GetSmsStateCopyWithImpl(this._value, this._then);

  final GetSmsState _value;
  // ignore: unused_field
  final $Res Function(GetSmsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GetSmsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GetSmsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SmsModel> model) loaded,
    required TResult Function(CatchException mes) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SmsModel> model)? loaded,
    TResult Function(CatchException mes)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetSmsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<SmsModel> model});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$GetSmsStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_Loaded(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as List<SmsModel>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.model);

  @override
  final List<SmsModel> model;

  @override
  String toString() {
    return 'GetSmsState.loaded(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SmsModel> model) loaded,
    required TResult Function(CatchException mes) error,
  }) {
    return loaded(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SmsModel> model)? loaded,
    TResult Function(CatchException mes)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements GetSmsState {
  const factory _Loaded(List<SmsModel> model) = _$_Loaded;

  List<SmsModel> get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({CatchException mes});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$GetSmsStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? mes = freezed,
  }) {
    return _then(_Error(
      mes == freezed
          ? _value.mes
          : mes // ignore: cast_nullable_to_non_nullable
              as CatchException,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.mes);

  @override
  final CatchException mes;

  @override
  String toString() {
    return 'GetSmsState.error(mes: $mes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.mes, mes) ||
                const DeepCollectionEquality().equals(other.mes, mes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mes);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SmsModel> model) loaded,
    required TResult Function(CatchException mes) error,
  }) {
    return error(mes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SmsModel> model)? loaded,
    TResult Function(CatchException mes)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(mes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements GetSmsState {
  const factory _Error(CatchException mes) = _$_Error;

  CatchException get mes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
