// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'history_of_numbers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryOfNumbersEventTearOff {
  const _$HistoryOfNumbersEventTearOff();

  _GetHistoryNumbers getHistoryNumbers() {
    return const _GetHistoryNumbers();
  }

  _GetSearchNumber getSearchNumber(String msisdn) {
    return _GetSearchNumber(
      msisdn,
    );
  }
}

/// @nodoc
const $HistoryOfNumbersEvent = _$HistoryOfNumbersEventTearOff();

/// @nodoc
mixin _$HistoryOfNumbersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHistoryNumbers,
    required TResult Function(String msisdn) getSearchNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHistoryNumbers,
    TResult Function(String msisdn)? getSearchNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistoryNumbers value) getHistoryNumbers,
    required TResult Function(_GetSearchNumber value) getSearchNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistoryNumbers value)? getHistoryNumbers,
    TResult Function(_GetSearchNumber value)? getSearchNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryOfNumbersEventCopyWith<$Res> {
  factory $HistoryOfNumbersEventCopyWith(HistoryOfNumbersEvent value,
          $Res Function(HistoryOfNumbersEvent) then) =
      _$HistoryOfNumbersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryOfNumbersEventCopyWithImpl<$Res>
    implements $HistoryOfNumbersEventCopyWith<$Res> {
  _$HistoryOfNumbersEventCopyWithImpl(this._value, this._then);

  final HistoryOfNumbersEvent _value;
  // ignore: unused_field
  final $Res Function(HistoryOfNumbersEvent) _then;
}

/// @nodoc
abstract class _$GetHistoryNumbersCopyWith<$Res> {
  factory _$GetHistoryNumbersCopyWith(
          _GetHistoryNumbers value, $Res Function(_GetHistoryNumbers) then) =
      __$GetHistoryNumbersCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetHistoryNumbersCopyWithImpl<$Res>
    extends _$HistoryOfNumbersEventCopyWithImpl<$Res>
    implements _$GetHistoryNumbersCopyWith<$Res> {
  __$GetHistoryNumbersCopyWithImpl(
      _GetHistoryNumbers _value, $Res Function(_GetHistoryNumbers) _then)
      : super(_value, (v) => _then(v as _GetHistoryNumbers));

  @override
  _GetHistoryNumbers get _value => super._value as _GetHistoryNumbers;
}

/// @nodoc

class _$_GetHistoryNumbers implements _GetHistoryNumbers {
  const _$_GetHistoryNumbers();

  @override
  String toString() {
    return 'HistoryOfNumbersEvent.getHistoryNumbers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetHistoryNumbers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHistoryNumbers,
    required TResult Function(String msisdn) getSearchNumber,
  }) {
    return getHistoryNumbers();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHistoryNumbers,
    TResult Function(String msisdn)? getSearchNumber,
    required TResult orElse(),
  }) {
    if (getHistoryNumbers != null) {
      return getHistoryNumbers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistoryNumbers value) getHistoryNumbers,
    required TResult Function(_GetSearchNumber value) getSearchNumber,
  }) {
    return getHistoryNumbers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistoryNumbers value)? getHistoryNumbers,
    TResult Function(_GetSearchNumber value)? getSearchNumber,
    required TResult orElse(),
  }) {
    if (getHistoryNumbers != null) {
      return getHistoryNumbers(this);
    }
    return orElse();
  }
}

abstract class _GetHistoryNumbers implements HistoryOfNumbersEvent {
  const factory _GetHistoryNumbers() = _$_GetHistoryNumbers;
}

/// @nodoc
abstract class _$GetSearchNumberCopyWith<$Res> {
  factory _$GetSearchNumberCopyWith(
          _GetSearchNumber value, $Res Function(_GetSearchNumber) then) =
      __$GetSearchNumberCopyWithImpl<$Res>;
  $Res call({String msisdn});
}

/// @nodoc
class __$GetSearchNumberCopyWithImpl<$Res>
    extends _$HistoryOfNumbersEventCopyWithImpl<$Res>
    implements _$GetSearchNumberCopyWith<$Res> {
  __$GetSearchNumberCopyWithImpl(
      _GetSearchNumber _value, $Res Function(_GetSearchNumber) _then)
      : super(_value, (v) => _then(v as _GetSearchNumber));

  @override
  _GetSearchNumber get _value => super._value as _GetSearchNumber;

  @override
  $Res call({
    Object? msisdn = freezed,
  }) {
    return _then(_GetSearchNumber(
      msisdn == freezed
          ? _value.msisdn
          : msisdn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSearchNumber implements _GetSearchNumber {
  const _$_GetSearchNumber(this.msisdn);

  @override
  final String msisdn;

  @override
  String toString() {
    return 'HistoryOfNumbersEvent.getSearchNumber(msisdn: $msisdn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSearchNumber &&
            (identical(other.msisdn, msisdn) ||
                const DeepCollectionEquality().equals(other.msisdn, msisdn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msisdn);

  @JsonKey(ignore: true)
  @override
  _$GetSearchNumberCopyWith<_GetSearchNumber> get copyWith =>
      __$GetSearchNumberCopyWithImpl<_GetSearchNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHistoryNumbers,
    required TResult Function(String msisdn) getSearchNumber,
  }) {
    return getSearchNumber(msisdn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHistoryNumbers,
    TResult Function(String msisdn)? getSearchNumber,
    required TResult orElse(),
  }) {
    if (getSearchNumber != null) {
      return getSearchNumber(msisdn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHistoryNumbers value) getHistoryNumbers,
    required TResult Function(_GetSearchNumber value) getSearchNumber,
  }) {
    return getSearchNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHistoryNumbers value)? getHistoryNumbers,
    TResult Function(_GetSearchNumber value)? getSearchNumber,
    required TResult orElse(),
  }) {
    if (getSearchNumber != null) {
      return getSearchNumber(this);
    }
    return orElse();
  }
}

abstract class _GetSearchNumber implements HistoryOfNumbersEvent {
  const factory _GetSearchNumber(String msisdn) = _$_GetSearchNumber;

  String get msisdn => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetSearchNumberCopyWith<_GetSearchNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HistoryOfNumbersStateTearOff {
  const _$HistoryOfNumbersStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(List<HistoryNumberModels> model) {
    return _Loaded(
      model,
    );
  }

  _Search search(String msisdn) {
    return _Search(
      msisdn,
    );
  }

  _Error error(CatchException exception) {
    return _Error(
      exception,
    );
  }

  _SearchError searchError(CatchException exception) {
    return _SearchError(
      exception,
    );
  }
}

/// @nodoc
const $HistoryOfNumbersState = _$HistoryOfNumbersStateTearOff();

/// @nodoc
mixin _$HistoryOfNumbersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryNumberModels> model) loaded,
    required TResult Function(String msisdn) search,
    required TResult Function(CatchException exception) error,
    required TResult Function(CatchException exception) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryNumberModels> model)? loaded,
    TResult Function(String msisdn)? search,
    TResult Function(CatchException exception)? error,
    TResult Function(CatchException exception)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Search value) search,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchError value) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Search value)? search,
    TResult Function(_Error value)? error,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryOfNumbersStateCopyWith<$Res> {
  factory $HistoryOfNumbersStateCopyWith(HistoryOfNumbersState value,
          $Res Function(HistoryOfNumbersState) then) =
      _$HistoryOfNumbersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryOfNumbersStateCopyWithImpl<$Res>
    implements $HistoryOfNumbersStateCopyWith<$Res> {
  _$HistoryOfNumbersStateCopyWithImpl(this._value, this._then);

  final HistoryOfNumbersState _value;
  // ignore: unused_field
  final $Res Function(HistoryOfNumbersState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$HistoryOfNumbersStateCopyWithImpl<$Res>
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
    return 'HistoryOfNumbersState.initial()';
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
    required TResult Function(List<HistoryNumberModels> model) loaded,
    required TResult Function(String msisdn) search,
    required TResult Function(CatchException exception) error,
    required TResult Function(CatchException exception) searchError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryNumberModels> model)? loaded,
    TResult Function(String msisdn)? search,
    TResult Function(CatchException exception)? error,
    TResult Function(CatchException exception)? searchError,
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
    required TResult Function(_Search value) search,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchError value) searchError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Search value)? search,
    TResult Function(_Error value)? error,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HistoryOfNumbersState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$HistoryOfNumbersStateCopyWithImpl<$Res>
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
    return 'HistoryOfNumbersState.loading()';
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
    required TResult Function(List<HistoryNumberModels> model) loaded,
    required TResult Function(String msisdn) search,
    required TResult Function(CatchException exception) error,
    required TResult Function(CatchException exception) searchError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryNumberModels> model)? loaded,
    TResult Function(String msisdn)? search,
    TResult Function(CatchException exception)? error,
    TResult Function(CatchException exception)? searchError,
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
    required TResult Function(_Search value) search,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchError value) searchError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Search value)? search,
    TResult Function(_Error value)? error,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HistoryOfNumbersState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<HistoryNumberModels> model});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$HistoryOfNumbersStateCopyWithImpl<$Res>
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
              as List<HistoryNumberModels>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.model);

  @override
  final List<HistoryNumberModels> model;

  @override
  String toString() {
    return 'HistoryOfNumbersState.loaded(model: $model)';
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
    required TResult Function(List<HistoryNumberModels> model) loaded,
    required TResult Function(String msisdn) search,
    required TResult Function(CatchException exception) error,
    required TResult Function(CatchException exception) searchError,
  }) {
    return loaded(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryNumberModels> model)? loaded,
    TResult Function(String msisdn)? search,
    TResult Function(CatchException exception)? error,
    TResult Function(CatchException exception)? searchError,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Search value) search,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchError value) searchError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Search value)? search,
    TResult Function(_Error value)? error,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HistoryOfNumbersState {
  const factory _Loaded(List<HistoryNumberModels> model) = _$_Loaded;

  List<HistoryNumberModels> get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  $Res call({String msisdn});
}

/// @nodoc
class __$SearchCopyWithImpl<$Res>
    extends _$HistoryOfNumbersStateCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;

  @override
  $Res call({
    Object? msisdn = freezed,
  }) {
    return _then(_Search(
      msisdn == freezed
          ? _value.msisdn
          : msisdn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search(this.msisdn);

  @override
  final String msisdn;

  @override
  String toString() {
    return 'HistoryOfNumbersState.search(msisdn: $msisdn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Search &&
            (identical(other.msisdn, msisdn) ||
                const DeepCollectionEquality().equals(other.msisdn, msisdn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msisdn);

  @JsonKey(ignore: true)
  @override
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryNumberModels> model) loaded,
    required TResult Function(String msisdn) search,
    required TResult Function(CatchException exception) error,
    required TResult Function(CatchException exception) searchError,
  }) {
    return search(msisdn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryNumberModels> model)? loaded,
    TResult Function(String msisdn)? search,
    TResult Function(CatchException exception)? error,
    TResult Function(CatchException exception)? searchError,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(msisdn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Search value) search,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchError value) searchError,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Search value)? search,
    TResult Function(_Error value)? error,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements HistoryOfNumbersState {
  const factory _Search(String msisdn) = _$_Search;

  String get msisdn => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchCopyWith<_Search> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({CatchException exception});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    extends _$HistoryOfNumbersStateCopyWithImpl<$Res>
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
    return 'HistoryOfNumbersState.error(exception: $exception)';
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
    required TResult Function(List<HistoryNumberModels> model) loaded,
    required TResult Function(String msisdn) search,
    required TResult Function(CatchException exception) error,
    required TResult Function(CatchException exception) searchError,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryNumberModels> model)? loaded,
    TResult Function(String msisdn)? search,
    TResult Function(CatchException exception)? error,
    TResult Function(CatchException exception)? searchError,
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
    required TResult Function(_Search value) search,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchError value) searchError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Search value)? search,
    TResult Function(_Error value)? error,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HistoryOfNumbersState {
  const factory _Error(CatchException exception) = _$_Error;

  CatchException get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchErrorCopyWith<$Res> {
  factory _$SearchErrorCopyWith(
          _SearchError value, $Res Function(_SearchError) then) =
      __$SearchErrorCopyWithImpl<$Res>;
  $Res call({CatchException exception});
}

/// @nodoc
class __$SearchErrorCopyWithImpl<$Res>
    extends _$HistoryOfNumbersStateCopyWithImpl<$Res>
    implements _$SearchErrorCopyWith<$Res> {
  __$SearchErrorCopyWithImpl(
      _SearchError _value, $Res Function(_SearchError) _then)
      : super(_value, (v) => _then(v as _SearchError));

  @override
  _SearchError get _value => super._value as _SearchError;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_SearchError(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as CatchException,
    ));
  }
}

/// @nodoc

class _$_SearchError implements _SearchError {
  const _$_SearchError(this.exception);

  @override
  final CatchException exception;

  @override
  String toString() {
    return 'HistoryOfNumbersState.searchError(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchError &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$SearchErrorCopyWith<_SearchError> get copyWith =>
      __$SearchErrorCopyWithImpl<_SearchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryNumberModels> model) loaded,
    required TResult Function(String msisdn) search,
    required TResult Function(CatchException exception) error,
    required TResult Function(CatchException exception) searchError,
  }) {
    return searchError(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryNumberModels> model)? loaded,
    TResult Function(String msisdn)? search,
    TResult Function(CatchException exception)? error,
    TResult Function(CatchException exception)? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Search value) search,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchError value) searchError,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Search value)? search,
    TResult Function(_Error value)? error,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this);
    }
    return orElse();
  }
}

abstract class _SearchError implements HistoryOfNumbersState {
  const factory _SearchError(CatchException exception) = _$_SearchError;

  CatchException get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchErrorCopyWith<_SearchError> get copyWith =>
      throw _privateConstructorUsedError;
}
