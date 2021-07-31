// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'agent_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AgentListEventTearOff {
  const _$AgentListEventTearOff();

  _AgentList agentList() {
    return const _AgentList();
  }
}

/// @nodoc
const $AgentListEvent = _$AgentListEventTearOff();

/// @nodoc
mixin _$AgentListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() agentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? agentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AgentList value) agentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AgentList value)? agentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentListEventCopyWith<$Res> {
  factory $AgentListEventCopyWith(
          AgentListEvent value, $Res Function(AgentListEvent) then) =
      _$AgentListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgentListEventCopyWithImpl<$Res>
    implements $AgentListEventCopyWith<$Res> {
  _$AgentListEventCopyWithImpl(this._value, this._then);

  final AgentListEvent _value;
  // ignore: unused_field
  final $Res Function(AgentListEvent) _then;
}

/// @nodoc
abstract class _$AgentListCopyWith<$Res> {
  factory _$AgentListCopyWith(
          _AgentList value, $Res Function(_AgentList) then) =
      __$AgentListCopyWithImpl<$Res>;
}

/// @nodoc
class __$AgentListCopyWithImpl<$Res> extends _$AgentListEventCopyWithImpl<$Res>
    implements _$AgentListCopyWith<$Res> {
  __$AgentListCopyWithImpl(_AgentList _value, $Res Function(_AgentList) _then)
      : super(_value, (v) => _then(v as _AgentList));

  @override
  _AgentList get _value => super._value as _AgentList;
}

/// @nodoc

class _$_AgentList implements _AgentList {
  const _$_AgentList();

  @override
  String toString() {
    return 'AgentListEvent.agentList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AgentList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() agentList,
  }) {
    return agentList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? agentList,
    required TResult orElse(),
  }) {
    if (agentList != null) {
      return agentList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AgentList value) agentList,
  }) {
    return agentList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AgentList value)? agentList,
    required TResult orElse(),
  }) {
    if (agentList != null) {
      return agentList(this);
    }
    return orElse();
  }
}

abstract class _AgentList implements AgentListEvent {
  const factory _AgentList() = _$_AgentList;
}

/// @nodoc
class _$AgentListStateTearOff {
  const _$AgentListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loaded loaded(List<AgentModel> model) {
    return _Loaded(
      model,
    );
  }

  _Field field(CatchException exception) {
    return _Field(
      exception,
    );
  }
}

/// @nodoc
const $AgentListState = _$AgentListStateTearOff();

/// @nodoc
mixin _$AgentListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<AgentModel> model) loaded,
    required TResult Function(CatchException exception) field,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<AgentModel> model)? loaded,
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
abstract class $AgentListStateCopyWith<$Res> {
  factory $AgentListStateCopyWith(
          AgentListState value, $Res Function(AgentListState) then) =
      _$AgentListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgentListStateCopyWithImpl<$Res>
    implements $AgentListStateCopyWith<$Res> {
  _$AgentListStateCopyWithImpl(this._value, this._then);

  final AgentListState _value;
  // ignore: unused_field
  final $Res Function(AgentListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AgentListStateCopyWithImpl<$Res>
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
    return 'AgentListState.initial()';
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
    required TResult Function(List<AgentModel> model) loaded,
    required TResult Function(CatchException exception) field,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<AgentModel> model)? loaded,
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

abstract class _Initial implements AgentListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<AgentModel> model});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$AgentListStateCopyWithImpl<$Res>
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
              as List<AgentModel>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.model);

  @override
  final List<AgentModel> model;

  @override
  String toString() {
    return 'AgentListState.loaded(model: $model)';
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
    required TResult Function(List<AgentModel> model) loaded,
    required TResult Function(CatchException exception) field,
  }) {
    return loaded(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<AgentModel> model)? loaded,
    TResult Function(CatchException exception)? field,
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

abstract class _Loaded implements AgentListState {
  const factory _Loaded(List<AgentModel> model) = _$_Loaded;

  List<AgentModel> get model => throw _privateConstructorUsedError;
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
class __$FieldCopyWithImpl<$Res> extends _$AgentListStateCopyWithImpl<$Res>
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
    return 'AgentListState.field(exception: $exception)';
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
    required TResult Function(List<AgentModel> model) loaded,
    required TResult Function(CatchException exception) field,
  }) {
    return field(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<AgentModel> model)? loaded,
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

abstract class _Field implements AgentListState {
  const factory _Field(CatchException exception) = _$_Field;

  CatchException get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FieldCopyWith<_Field> get copyWith => throw _privateConstructorUsedError;
}
