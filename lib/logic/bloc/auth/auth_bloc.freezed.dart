// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _GetAuth getAuth(String msisdn, String pin) {
    return _GetAuth(
      msisdn,
      pin,
    );
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  String get msisdn => throw _privateConstructorUsedError;
  String get pin => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msisdn, String pin) getAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msisdn, String pin)? getAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAuth value) getAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAuth value)? getAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
  $Res call({String msisdn, String pin});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;

  @override
  $Res call({
    Object? msisdn = freezed,
    Object? pin = freezed,
  }) {
    return _then(_value.copyWith(
      msisdn: msisdn == freezed
          ? _value.msisdn
          : msisdn // ignore: cast_nullable_to_non_nullable
              as String,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetAuthCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$GetAuthCopyWith(_GetAuth value, $Res Function(_GetAuth) then) =
      __$GetAuthCopyWithImpl<$Res>;
  @override
  $Res call({String msisdn, String pin});
}

/// @nodoc
class __$GetAuthCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$GetAuthCopyWith<$Res> {
  __$GetAuthCopyWithImpl(_GetAuth _value, $Res Function(_GetAuth) _then)
      : super(_value, (v) => _then(v as _GetAuth));

  @override
  _GetAuth get _value => super._value as _GetAuth;

  @override
  $Res call({
    Object? msisdn = freezed,
    Object? pin = freezed,
  }) {
    return _then(_GetAuth(
      msisdn == freezed
          ? _value.msisdn
          : msisdn // ignore: cast_nullable_to_non_nullable
              as String,
      pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAuth implements _GetAuth {
  const _$_GetAuth(this.msisdn, this.pin);

  @override
  final String msisdn;
  @override
  final String pin;

  @override
  String toString() {
    return 'AuthEvent.getAuth(msisdn: $msisdn, pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAuth &&
            (identical(other.msisdn, msisdn) ||
                const DeepCollectionEquality().equals(other.msisdn, msisdn)) &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(msisdn) ^
      const DeepCollectionEquality().hash(pin);

  @JsonKey(ignore: true)
  @override
  _$GetAuthCopyWith<_GetAuth> get copyWith =>
      __$GetAuthCopyWithImpl<_GetAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msisdn, String pin) getAuth,
  }) {
    return getAuth(msisdn, pin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msisdn, String pin)? getAuth,
    required TResult orElse(),
  }) {
    if (getAuth != null) {
      return getAuth(msisdn, pin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAuth value) getAuth,
  }) {
    return getAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAuth value)? getAuth,
    required TResult orElse(),
  }) {
    if (getAuth != null) {
      return getAuth(this);
    }
    return orElse();
  }
}

abstract class _GetAuth implements AuthEvent {
  const factory _GetAuth(String msisdn, String pin) = _$_GetAuth;

  @override
  String get msisdn => throw _privateConstructorUsedError;
  @override
  String get pin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetAuthCopyWith<_GetAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Field field(CatchException exception) {
    return _Field(
      exception,
    );
  }

  _Loaded loaded(AuthModel model) {
    return _Loaded(
      model,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CatchException exception) field,
    required TResult Function(AuthModel model) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CatchException exception)? field,
    TResult Function(AuthModel model)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Field value) field,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Field value)? field,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.initial()';
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
    required TResult Function(CatchException exception) field,
    required TResult Function(AuthModel model) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CatchException exception)? field,
    TResult Function(AuthModel model)? loaded,
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
    required TResult Function(_Field value) field,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Field value)? field,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.loading()';
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
    required TResult Function(CatchException exception) field,
    required TResult Function(AuthModel model) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CatchException exception)? field,
    TResult Function(AuthModel model)? loaded,
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
    required TResult Function(_Field value) field,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Field value)? field,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FieldCopyWith<$Res> {
  factory _$FieldCopyWith(_Field value, $Res Function(_Field) then) =
      __$FieldCopyWithImpl<$Res>;
  $Res call({CatchException exception});
}

/// @nodoc
class __$FieldCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$FieldCopyWith<$Res> {
  __$FieldCopyWithImpl(_Field _value, $Res Function(_Field) _then)
      : super(_value, (v) => _then(v as _Field));

  @override
  _Field get _value => super._value as _Field;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_Field(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as CatchException,
    ));
  }
}

/// @nodoc

class _$_Field implements _Field {
  const _$_Field(this.exception);

  @override
  final CatchException exception;

  @override
  String toString() {
    return 'AuthState.field(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Field &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$FieldCopyWith<_Field> get copyWith =>
      __$FieldCopyWithImpl<_Field>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CatchException exception) field,
    required TResult Function(AuthModel model) loaded,
  }) {
    return field(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CatchException exception)? field,
    TResult Function(AuthModel model)? loaded,
    required TResult orElse(),
  }) {
    if (field != null) {
      return field(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Field value) field,
    required TResult Function(_Loaded value) loaded,
  }) {
    return field(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Field value)? field,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (field != null) {
      return field(this);
    }
    return orElse();
  }
}

abstract class _Field implements AuthState {
  const factory _Field(CatchException exception) = _$_Field;

  CatchException get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FieldCopyWith<_Field> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({AuthModel model});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
              as AuthModel,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.model);

  @override
  final AuthModel model;

  @override
  String toString() {
    return 'AuthState.loaded(model: $model)';
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
    required TResult Function() loading,
    required TResult Function(CatchException exception) field,
    required TResult Function(AuthModel model) loaded,
  }) {
    return loaded(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CatchException exception)? field,
    TResult Function(AuthModel model)? loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Field value) field,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Field value)? field,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AuthState {
  const factory _Loaded(AuthModel model) = _$_Loaded;

  AuthModel get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
