// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_agent_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddAgentEventTearOff {
  const _$AddAgentEventTearOff();

  _AddAgent addAgent(String msisdn, String name) {
    return _AddAgent(
      msisdn,
      name,
    );
  }
}

/// @nodoc
const $AddAgentEvent = _$AddAgentEventTearOff();

/// @nodoc
mixin _$AddAgentEvent {
  String get msisdn => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msisdn, String name) addAgent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msisdn, String name)? addAgent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAgent value) addAgent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAgent value)? addAgent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddAgentEventCopyWith<AddAgentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAgentEventCopyWith<$Res> {
  factory $AddAgentEventCopyWith(
          AddAgentEvent value, $Res Function(AddAgentEvent) then) =
      _$AddAgentEventCopyWithImpl<$Res>;
  $Res call({String msisdn, String name});
}

/// @nodoc
class _$AddAgentEventCopyWithImpl<$Res>
    implements $AddAgentEventCopyWith<$Res> {
  _$AddAgentEventCopyWithImpl(this._value, this._then);

  final AddAgentEvent _value;
  // ignore: unused_field
  final $Res Function(AddAgentEvent) _then;

  @override
  $Res call({
    Object? msisdn = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      msisdn: msisdn == freezed
          ? _value.msisdn
          : msisdn // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AddAgentCopyWith<$Res>
    implements $AddAgentEventCopyWith<$Res> {
  factory _$AddAgentCopyWith(_AddAgent value, $Res Function(_AddAgent) then) =
      __$AddAgentCopyWithImpl<$Res>;
  @override
  $Res call({String msisdn, String name});
}

/// @nodoc
class __$AddAgentCopyWithImpl<$Res> extends _$AddAgentEventCopyWithImpl<$Res>
    implements _$AddAgentCopyWith<$Res> {
  __$AddAgentCopyWithImpl(_AddAgent _value, $Res Function(_AddAgent) _then)
      : super(_value, (v) => _then(v as _AddAgent));

  @override
  _AddAgent get _value => super._value as _AddAgent;

  @override
  $Res call({
    Object? msisdn = freezed,
    Object? name = freezed,
  }) {
    return _then(_AddAgent(
      msisdn == freezed
          ? _value.msisdn
          : msisdn // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddAgent implements _AddAgent {
  const _$_AddAgent(this.msisdn, this.name);

  @override
  final String msisdn;
  @override
  final String name;

  @override
  String toString() {
    return 'AddAgentEvent.addAgent(msisdn: $msisdn, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddAgent &&
            (identical(other.msisdn, msisdn) ||
                const DeepCollectionEquality().equals(other.msisdn, msisdn)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(msisdn) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$AddAgentCopyWith<_AddAgent> get copyWith =>
      __$AddAgentCopyWithImpl<_AddAgent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msisdn, String name) addAgent,
  }) {
    return addAgent(msisdn, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msisdn, String name)? addAgent,
    required TResult orElse(),
  }) {
    if (addAgent != null) {
      return addAgent(msisdn, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAgent value) addAgent,
  }) {
    return addAgent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAgent value)? addAgent,
    required TResult orElse(),
  }) {
    if (addAgent != null) {
      return addAgent(this);
    }
    return orElse();
  }
}

abstract class _AddAgent implements AddAgentEvent {
  const factory _AddAgent(String msisdn, String name) = _$_AddAgent;

  @override
  String get msisdn => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddAgentCopyWith<_AddAgent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddAgentStateTearOff {
  const _$AddAgentStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loaded loaded(String message) {
    return _Loaded(
      message,
    );
  }

  _Field field(CatchException exception) {
    return _Field(
      exception,
    );
  }
}

/// @nodoc
const $AddAgentState = _$AddAgentStateTearOff();

/// @nodoc
mixin _$AddAgentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loaded,
    required TResult Function(CatchException exception) field,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loaded,
    TResult Function(CatchException exception)? field,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Field value) field,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Field value)? field,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAgentStateCopyWith<$Res> {
  factory $AddAgentStateCopyWith(
          AddAgentState value, $Res Function(AddAgentState) then) =
      _$AddAgentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddAgentStateCopyWithImpl<$Res>
    implements $AddAgentStateCopyWith<$Res> {
  _$AddAgentStateCopyWithImpl(this._value, this._then);

  final AddAgentState _value;
  // ignore: unused_field
  final $Res Function(AddAgentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AddAgentStateCopyWithImpl<$Res>
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
    return 'AddAgentState.initial()';
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
    required TResult Function(String message) loaded,
    required TResult Function(CatchException exception) field,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loaded,
    TResult Function(CatchException exception)? field,
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
    required TResult Function(_Field value) field,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Field value)? field,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddAgentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$AddAgentStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Loaded(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddAgentState.loaded(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loaded,
    required TResult Function(CatchException exception) field,
  }) {
    return loaded(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loaded,
    TResult Function(CatchException exception)? field,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Field value) field,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Field value)? field,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AddAgentState {
  const factory _Loaded(String message) = _$_Loaded;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FieldCopyWith<$Res> {
  factory _$FieldCopyWith(_Field value, $Res Function(_Field) then) =
      __$FieldCopyWithImpl<$Res>;
  $Res call({CatchException exception});
}

/// @nodoc
class __$FieldCopyWithImpl<$Res> extends _$AddAgentStateCopyWithImpl<$Res>
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
    return 'AddAgentState.field(exception: $exception)';
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
    required TResult Function(String message) loaded,
    required TResult Function(CatchException exception) field,
  }) {
    return field(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loaded,
    TResult Function(CatchException exception)? field,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Field value) field,
  }) {
    return field(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Field value)? field,
    required TResult orElse(),
  }) {
    if (field != null) {
      return field(this);
    }
    return orElse();
  }
}

abstract class _Field implements AddAgentState {
  const factory _Field(CatchException exception) = _$_Field;

  CatchException get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FieldCopyWith<_Field> get copyWith => throw _privateConstructorUsedError;
}
