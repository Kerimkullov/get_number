// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'deactivate_number_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeactivateNumberEventTearOff {
  const _$DeactivateNumberEventTearOff();

  _Deactivate deactivate(String msisdn) {
    return _Deactivate(
      msisdn,
    );
  }
}

/// @nodoc
const $DeactivateNumberEvent = _$DeactivateNumberEventTearOff();

/// @nodoc
mixin _$DeactivateNumberEvent {
  String get msisdn => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msisdn) deactivate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msisdn)? deactivate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deactivate value) deactivate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deactivate value)? deactivate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeactivateNumberEventCopyWith<DeactivateNumberEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeactivateNumberEventCopyWith<$Res> {
  factory $DeactivateNumberEventCopyWith(DeactivateNumberEvent value,
          $Res Function(DeactivateNumberEvent) then) =
      _$DeactivateNumberEventCopyWithImpl<$Res>;
  $Res call({String msisdn});
}

/// @nodoc
class _$DeactivateNumberEventCopyWithImpl<$Res>
    implements $DeactivateNumberEventCopyWith<$Res> {
  _$DeactivateNumberEventCopyWithImpl(this._value, this._then);

  final DeactivateNumberEvent _value;
  // ignore: unused_field
  final $Res Function(DeactivateNumberEvent) _then;

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
abstract class _$DeactivateCopyWith<$Res>
    implements $DeactivateNumberEventCopyWith<$Res> {
  factory _$DeactivateCopyWith(
          _Deactivate value, $Res Function(_Deactivate) then) =
      __$DeactivateCopyWithImpl<$Res>;
  @override
  $Res call({String msisdn});
}

/// @nodoc
class __$DeactivateCopyWithImpl<$Res>
    extends _$DeactivateNumberEventCopyWithImpl<$Res>
    implements _$DeactivateCopyWith<$Res> {
  __$DeactivateCopyWithImpl(
      _Deactivate _value, $Res Function(_Deactivate) _then)
      : super(_value, (v) => _then(v as _Deactivate));

  @override
  _Deactivate get _value => super._value as _Deactivate;

  @override
  $Res call({
    Object? msisdn = freezed,
  }) {
    return _then(_Deactivate(
      msisdn == freezed
          ? _value.msisdn
          : msisdn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Deactivate implements _Deactivate {
  const _$_Deactivate(this.msisdn);

  @override
  final String msisdn;

  @override
  String toString() {
    return 'DeactivateNumberEvent.deactivate(msisdn: $msisdn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deactivate &&
            (identical(other.msisdn, msisdn) ||
                const DeepCollectionEquality().equals(other.msisdn, msisdn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msisdn);

  @JsonKey(ignore: true)
  @override
  _$DeactivateCopyWith<_Deactivate> get copyWith =>
      __$DeactivateCopyWithImpl<_Deactivate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msisdn) deactivate,
  }) {
    return deactivate(msisdn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msisdn)? deactivate,
    required TResult orElse(),
  }) {
    if (deactivate != null) {
      return deactivate(msisdn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deactivate value) deactivate,
  }) {
    return deactivate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deactivate value)? deactivate,
    required TResult orElse(),
  }) {
    if (deactivate != null) {
      return deactivate(this);
    }
    return orElse();
  }
}

abstract class _Deactivate implements DeactivateNumberEvent {
  const factory _Deactivate(String msisdn) = _$_Deactivate;

  @override
  String get msisdn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeactivateCopyWith<_Deactivate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DeactivateNumberStateTearOff {
  const _$DeactivateNumberStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(dynamic massage) {
    return _Loaded(
      massage,
    );
  }

  _Error error(CatchException exception) {
    return _Error(
      exception,
    );
  }
}

/// @nodoc
const $DeactivateNumberState = _$DeactivateNumberStateTearOff();

/// @nodoc
mixin _$DeactivateNumberState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic massage) loaded,
    required TResult Function(CatchException exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic massage)? loaded,
    TResult Function(CatchException exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeactivateNumberStateCopyWith<$Res> {
  factory $DeactivateNumberStateCopyWith(DeactivateNumberState value,
          $Res Function(DeactivateNumberState) then) =
      _$DeactivateNumberStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeactivateNumberStateCopyWithImpl<$Res>
    implements $DeactivateNumberStateCopyWith<$Res> {
  _$DeactivateNumberStateCopyWithImpl(this._value, this._then);

  final DeactivateNumberState _value;
  // ignore: unused_field
  final $Res Function(DeactivateNumberState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$DeactivateNumberStateCopyWithImpl<$Res>
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
    return 'DeactivateNumberState.initial()';
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
    required TResult Function() loading,
    required TResult Function(dynamic massage) loaded,
    required TResult Function(CatchException exception) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic massage)? loaded,
    TResult Function(CatchException exception)? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Initial implements DeactivateNumberState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$DeactivateNumberStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'DeactivateNumberState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic massage) loaded,
    required TResult Function(CatchException exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic massage)? loaded,
    TResult Function(CatchException exception)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DeactivateNumberState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({dynamic massage});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$DeactivateNumberStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? massage = freezed,
  }) {
    return _then(_Loaded(
      massage == freezed
          ? _value.massage
          : massage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.massage);

  @override
  final dynamic massage;

  @override
  String toString() {
    return 'DeactivateNumberState.loaded(massage: $massage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.massage, massage) ||
                const DeepCollectionEquality().equals(other.massage, massage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(massage);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic massage) loaded,
    required TResult Function(CatchException exception) error,
  }) {
    return loaded(massage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic massage)? loaded,
    TResult Function(CatchException exception)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(massage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Loaded implements DeactivateNumberState {
  const factory _Loaded(dynamic massage) = _$_Loaded;

  dynamic get massage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({CatchException exception});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    extends _$DeactivateNumberStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Error(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as CatchException,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.exception);

  @override
  final CatchException exception;

  @override
  String toString() {
    return 'DeactivateNumberState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic massage) loaded,
    required TResult Function(CatchException exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic massage)? loaded,
    TResult Function(CatchException exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
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

abstract class _Error implements DeactivateNumberState {
  const factory _Error(CatchException exception) = _$_Error;

  CatchException get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
