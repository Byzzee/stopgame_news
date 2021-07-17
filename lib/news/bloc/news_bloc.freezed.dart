// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsEventTearOff {
  const _$NewsEventTearOff();

  RefreshNewsEvent refresh() {
    return const RefreshNewsEvent();
  }
}

/// @nodoc
const $NewsEvent = _$NewsEventTearOff();

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshNewsEvent value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshNewsEvent value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  final NewsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsEvent) _then;
}

/// @nodoc
abstract class $RefreshNewsEventCopyWith<$Res> {
  factory $RefreshNewsEventCopyWith(
          RefreshNewsEvent value, $Res Function(RefreshNewsEvent) then) =
      _$RefreshNewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefreshNewsEventCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $RefreshNewsEventCopyWith<$Res> {
  _$RefreshNewsEventCopyWithImpl(
      RefreshNewsEvent _value, $Res Function(RefreshNewsEvent) _then)
      : super(_value, (v) => _then(v as RefreshNewsEvent));

  @override
  RefreshNewsEvent get _value => super._value as RefreshNewsEvent;
}

/// @nodoc

class _$RefreshNewsEvent extends RefreshNewsEvent {
  const _$RefreshNewsEvent() : super._();

  @override
  String toString() {
    return 'NewsEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RefreshNewsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshNewsEvent value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshNewsEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshNewsEvent extends NewsEvent {
  const factory RefreshNewsEvent() = _$RefreshNewsEvent;
  const RefreshNewsEvent._() : super._();
}

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

  InitialNewsState initial() {
    return const InitialNewsState();
  }

  FetchingNewsState fetching() {
    return const FetchingNewsState();
  }

  FetchedNewsState fetched(List<Article> data) {
    return FetchedNewsState(
      data,
    );
  }

  ErrorNewsState error(String errorMessage) {
    return ErrorNewsState(
      errorMessage,
    );
  }
}

/// @nodoc
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Article> data) fetched,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Article> data)? fetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNewsState value) initial,
    required TResult Function(FetchingNewsState value) fetching,
    required TResult Function(FetchedNewsState value) fetched,
    required TResult Function(ErrorNewsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNewsState value)? initial,
    TResult Function(FetchingNewsState value)? fetching,
    TResult Function(FetchedNewsState value)? fetched,
    TResult Function(ErrorNewsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;
}

/// @nodoc
abstract class $InitialNewsStateCopyWith<$Res> {
  factory $InitialNewsStateCopyWith(
          InitialNewsState value, $Res Function(InitialNewsState) then) =
      _$InitialNewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialNewsStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $InitialNewsStateCopyWith<$Res> {
  _$InitialNewsStateCopyWithImpl(
      InitialNewsState _value, $Res Function(InitialNewsState) _then)
      : super(_value, (v) => _then(v as InitialNewsState));

  @override
  InitialNewsState get _value => super._value as InitialNewsState;
}

/// @nodoc

class _$InitialNewsState extends InitialNewsState {
  const _$InitialNewsState() : super._();

  @override
  String toString() {
    return 'NewsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialNewsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Article> data) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Article> data)? fetched,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(InitialNewsState value) initial,
    required TResult Function(FetchingNewsState value) fetching,
    required TResult Function(FetchedNewsState value) fetched,
    required TResult Function(ErrorNewsState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNewsState value)? initial,
    TResult Function(FetchingNewsState value)? fetching,
    TResult Function(FetchedNewsState value)? fetched,
    TResult Function(ErrorNewsState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialNewsState extends NewsState {
  const factory InitialNewsState() = _$InitialNewsState;
  const InitialNewsState._() : super._();
}

/// @nodoc
abstract class $FetchingNewsStateCopyWith<$Res> {
  factory $FetchingNewsStateCopyWith(
          FetchingNewsState value, $Res Function(FetchingNewsState) then) =
      _$FetchingNewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchingNewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res>
    implements $FetchingNewsStateCopyWith<$Res> {
  _$FetchingNewsStateCopyWithImpl(
      FetchingNewsState _value, $Res Function(FetchingNewsState) _then)
      : super(_value, (v) => _then(v as FetchingNewsState));

  @override
  FetchingNewsState get _value => super._value as FetchingNewsState;
}

/// @nodoc

class _$FetchingNewsState extends FetchingNewsState {
  const _$FetchingNewsState() : super._();

  @override
  String toString() {
    return 'NewsState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchingNewsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Article> data) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Article> data)? fetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNewsState value) initial,
    required TResult Function(FetchingNewsState value) fetching,
    required TResult Function(FetchedNewsState value) fetched,
    required TResult Function(ErrorNewsState value) error,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNewsState value)? initial,
    TResult Function(FetchingNewsState value)? fetching,
    TResult Function(FetchedNewsState value)? fetched,
    TResult Function(ErrorNewsState value)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class FetchingNewsState extends NewsState {
  const factory FetchingNewsState() = _$FetchingNewsState;
  const FetchingNewsState._() : super._();
}

/// @nodoc
abstract class $FetchedNewsStateCopyWith<$Res> {
  factory $FetchedNewsStateCopyWith(
          FetchedNewsState value, $Res Function(FetchedNewsState) then) =
      _$FetchedNewsStateCopyWithImpl<$Res>;
  $Res call({List<Article> data});
}

/// @nodoc
class _$FetchedNewsStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $FetchedNewsStateCopyWith<$Res> {
  _$FetchedNewsStateCopyWithImpl(
      FetchedNewsState _value, $Res Function(FetchedNewsState) _then)
      : super(_value, (v) => _then(v as FetchedNewsState));

  @override
  FetchedNewsState get _value => super._value as FetchedNewsState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(FetchedNewsState(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$FetchedNewsState extends FetchedNewsState {
  const _$FetchedNewsState(this.data) : super._();

  @override
  final List<Article> data;

  @override
  String toString() {
    return 'NewsState.fetched(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchedNewsState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $FetchedNewsStateCopyWith<FetchedNewsState> get copyWith =>
      _$FetchedNewsStateCopyWithImpl<FetchedNewsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Article> data) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return fetched(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Article> data)? fetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNewsState value) initial,
    required TResult Function(FetchingNewsState value) fetching,
    required TResult Function(FetchedNewsState value) fetched,
    required TResult Function(ErrorNewsState value) error,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNewsState value)? initial,
    TResult Function(FetchingNewsState value)? fetching,
    TResult Function(FetchedNewsState value)? fetched,
    TResult Function(ErrorNewsState value)? error,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class FetchedNewsState extends NewsState {
  const factory FetchedNewsState(List<Article> data) = _$FetchedNewsState;
  const FetchedNewsState._() : super._();

  List<Article> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchedNewsStateCopyWith<FetchedNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorNewsStateCopyWith<$Res> {
  factory $ErrorNewsStateCopyWith(
          ErrorNewsState value, $Res Function(ErrorNewsState) then) =
      _$ErrorNewsStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$ErrorNewsStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $ErrorNewsStateCopyWith<$Res> {
  _$ErrorNewsStateCopyWithImpl(
      ErrorNewsState _value, $Res Function(ErrorNewsState) _then)
      : super(_value, (v) => _then(v as ErrorNewsState));

  @override
  ErrorNewsState get _value => super._value as ErrorNewsState;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(ErrorNewsState(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorNewsState extends ErrorNewsState {
  const _$ErrorNewsState(this.errorMessage) : super._();

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NewsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorNewsState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $ErrorNewsStateCopyWith<ErrorNewsState> get copyWith =>
      _$ErrorNewsStateCopyWithImpl<ErrorNewsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Article> data) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Article> data)? fetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNewsState value) initial,
    required TResult Function(FetchingNewsState value) fetching,
    required TResult Function(FetchedNewsState value) fetched,
    required TResult Function(ErrorNewsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNewsState value)? initial,
    TResult Function(FetchingNewsState value)? fetching,
    TResult Function(FetchedNewsState value)? fetched,
    TResult Function(ErrorNewsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorNewsState extends NewsState {
  const factory ErrorNewsState(String errorMessage) = _$ErrorNewsState;
  const ErrorNewsState._() : super._();

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorNewsStateCopyWith<ErrorNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
