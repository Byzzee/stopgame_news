// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'matters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MattersEventTearOff {
  const _$MattersEventTearOff();

  RefreshMattersEvent refresh({int? page}) {
    return RefreshMattersEvent(
      page: page,
    );
  }
}

/// @nodoc
const $MattersEvent = _$MattersEventTearOff();

/// @nodoc
mixin _$MattersEvent {
  int? get page => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshMattersEvent value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshMattersEvent value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MattersEventCopyWith<MattersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MattersEventCopyWith<$Res> {
  factory $MattersEventCopyWith(
          MattersEvent value, $Res Function(MattersEvent) then) =
      _$MattersEventCopyWithImpl<$Res>;
  $Res call({int? page});
}

/// @nodoc
class _$MattersEventCopyWithImpl<$Res> implements $MattersEventCopyWith<$Res> {
  _$MattersEventCopyWithImpl(this._value, this._then);

  final MattersEvent _value;
  // ignore: unused_field
  final $Res Function(MattersEvent) _then;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class $RefreshMattersEventCopyWith<$Res>
    implements $MattersEventCopyWith<$Res> {
  factory $RefreshMattersEventCopyWith(
          RefreshMattersEvent value, $Res Function(RefreshMattersEvent) then) =
      _$RefreshMattersEventCopyWithImpl<$Res>;
  @override
  $Res call({int? page});
}

/// @nodoc
class _$RefreshMattersEventCopyWithImpl<$Res>
    extends _$MattersEventCopyWithImpl<$Res>
    implements $RefreshMattersEventCopyWith<$Res> {
  _$RefreshMattersEventCopyWithImpl(
      RefreshMattersEvent _value, $Res Function(RefreshMattersEvent) _then)
      : super(_value, (v) => _then(v as RefreshMattersEvent));

  @override
  RefreshMattersEvent get _value => super._value as RefreshMattersEvent;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(RefreshMattersEvent(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RefreshMattersEvent extends RefreshMattersEvent {
  const _$RefreshMattersEvent({this.page}) : super._();

  @override
  final int? page;

  @override
  String toString() {
    return 'MattersEvent.refresh(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshMattersEvent &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  $RefreshMattersEventCopyWith<RefreshMattersEvent> get copyWith =>
      _$RefreshMattersEventCopyWithImpl<RefreshMattersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page) refresh,
  }) {
    return refresh(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshMattersEvent value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshMattersEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshMattersEvent extends MattersEvent {
  const factory RefreshMattersEvent({int? page}) = _$RefreshMattersEvent;
  const RefreshMattersEvent._() : super._();

  @override
  int? get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RefreshMattersEventCopyWith<RefreshMattersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MattersStateTearOff {
  const _$MattersStateTearOff();

  InitialMattersState initial() {
    return const InitialMattersState();
  }

  FetchingMattersState fetching() {
    return const FetchingMattersState();
  }

  FetchedMattersState fetched(List<Matter> data, int selectedPage) {
    return FetchedMattersState(
      data,
      selectedPage,
    );
  }

  ErrorMattersState error(String errorMessage) {
    return ErrorMattersState(
      errorMessage,
    );
  }
}

/// @nodoc
const $MattersState = _$MattersStateTearOff();

/// @nodoc
mixin _$MattersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Matter> data, int selectedPage) fetched,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Matter> data, int selectedPage)? fetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMattersState value) initial,
    required TResult Function(FetchingMattersState value) fetching,
    required TResult Function(FetchedMattersState value) fetched,
    required TResult Function(ErrorMattersState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMattersState value)? initial,
    TResult Function(FetchingMattersState value)? fetching,
    TResult Function(FetchedMattersState value)? fetched,
    TResult Function(ErrorMattersState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MattersStateCopyWith<$Res> {
  factory $MattersStateCopyWith(
          MattersState value, $Res Function(MattersState) then) =
      _$MattersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MattersStateCopyWithImpl<$Res> implements $MattersStateCopyWith<$Res> {
  _$MattersStateCopyWithImpl(this._value, this._then);

  final MattersState _value;
  // ignore: unused_field
  final $Res Function(MattersState) _then;
}

/// @nodoc
abstract class $InitialMattersStateCopyWith<$Res> {
  factory $InitialMattersStateCopyWith(
          InitialMattersState value, $Res Function(InitialMattersState) then) =
      _$InitialMattersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialMattersStateCopyWithImpl<$Res>
    extends _$MattersStateCopyWithImpl<$Res>
    implements $InitialMattersStateCopyWith<$Res> {
  _$InitialMattersStateCopyWithImpl(
      InitialMattersState _value, $Res Function(InitialMattersState) _then)
      : super(_value, (v) => _then(v as InitialMattersState));

  @override
  InitialMattersState get _value => super._value as InitialMattersState;
}

/// @nodoc

class _$InitialMattersState extends InitialMattersState {
  const _$InitialMattersState() : super._();

  @override
  String toString() {
    return 'MattersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialMattersState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Matter> data, int selectedPage) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Matter> data, int selectedPage)? fetched,
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
    required TResult Function(InitialMattersState value) initial,
    required TResult Function(FetchingMattersState value) fetching,
    required TResult Function(FetchedMattersState value) fetched,
    required TResult Function(ErrorMattersState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMattersState value)? initial,
    TResult Function(FetchingMattersState value)? fetching,
    TResult Function(FetchedMattersState value)? fetched,
    TResult Function(ErrorMattersState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialMattersState extends MattersState {
  const factory InitialMattersState() = _$InitialMattersState;
  const InitialMattersState._() : super._();
}

/// @nodoc
abstract class $FetchingMattersStateCopyWith<$Res> {
  factory $FetchingMattersStateCopyWith(FetchingMattersState value,
          $Res Function(FetchingMattersState) then) =
      _$FetchingMattersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchingMattersStateCopyWithImpl<$Res>
    extends _$MattersStateCopyWithImpl<$Res>
    implements $FetchingMattersStateCopyWith<$Res> {
  _$FetchingMattersStateCopyWithImpl(
      FetchingMattersState _value, $Res Function(FetchingMattersState) _then)
      : super(_value, (v) => _then(v as FetchingMattersState));

  @override
  FetchingMattersState get _value => super._value as FetchingMattersState;
}

/// @nodoc

class _$FetchingMattersState extends FetchingMattersState {
  const _$FetchingMattersState() : super._();

  @override
  String toString() {
    return 'MattersState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchingMattersState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Matter> data, int selectedPage) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Matter> data, int selectedPage)? fetched,
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
    required TResult Function(InitialMattersState value) initial,
    required TResult Function(FetchingMattersState value) fetching,
    required TResult Function(FetchedMattersState value) fetched,
    required TResult Function(ErrorMattersState value) error,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMattersState value)? initial,
    TResult Function(FetchingMattersState value)? fetching,
    TResult Function(FetchedMattersState value)? fetched,
    TResult Function(ErrorMattersState value)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class FetchingMattersState extends MattersState {
  const factory FetchingMattersState() = _$FetchingMattersState;
  const FetchingMattersState._() : super._();
}

/// @nodoc
abstract class $FetchedMattersStateCopyWith<$Res> {
  factory $FetchedMattersStateCopyWith(
          FetchedMattersState value, $Res Function(FetchedMattersState) then) =
      _$FetchedMattersStateCopyWithImpl<$Res>;
  $Res call({List<Matter> data, int selectedPage});
}

/// @nodoc
class _$FetchedMattersStateCopyWithImpl<$Res>
    extends _$MattersStateCopyWithImpl<$Res>
    implements $FetchedMattersStateCopyWith<$Res> {
  _$FetchedMattersStateCopyWithImpl(
      FetchedMattersState _value, $Res Function(FetchedMattersState) _then)
      : super(_value, (v) => _then(v as FetchedMattersState));

  @override
  FetchedMattersState get _value => super._value as FetchedMattersState;

  @override
  $Res call({
    Object? data = freezed,
    Object? selectedPage = freezed,
  }) {
    return _then(FetchedMattersState(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Matter>,
      selectedPage == freezed
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchedMattersState extends FetchedMattersState {
  const _$FetchedMattersState(this.data, this.selectedPage) : super._();

  @override
  final List<Matter> data;
  @override
  final int selectedPage;

  @override
  String toString() {
    return 'MattersState.fetched(data: $data, selectedPage: $selectedPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchedMattersState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.selectedPage, selectedPage) ||
                const DeepCollectionEquality()
                    .equals(other.selectedPage, selectedPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(selectedPage);

  @JsonKey(ignore: true)
  @override
  $FetchedMattersStateCopyWith<FetchedMattersState> get copyWith =>
      _$FetchedMattersStateCopyWithImpl<FetchedMattersState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Matter> data, int selectedPage) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return fetched(data, selectedPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Matter> data, int selectedPage)? fetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(data, selectedPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMattersState value) initial,
    required TResult Function(FetchingMattersState value) fetching,
    required TResult Function(FetchedMattersState value) fetched,
    required TResult Function(ErrorMattersState value) error,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMattersState value)? initial,
    TResult Function(FetchingMattersState value)? fetching,
    TResult Function(FetchedMattersState value)? fetched,
    TResult Function(ErrorMattersState value)? error,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class FetchedMattersState extends MattersState {
  const factory FetchedMattersState(List<Matter> data, int selectedPage) =
      _$FetchedMattersState;
  const FetchedMattersState._() : super._();

  List<Matter> get data => throw _privateConstructorUsedError;
  int get selectedPage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchedMattersStateCopyWith<FetchedMattersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorMattersStateCopyWith<$Res> {
  factory $ErrorMattersStateCopyWith(
          ErrorMattersState value, $Res Function(ErrorMattersState) then) =
      _$ErrorMattersStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$ErrorMattersStateCopyWithImpl<$Res>
    extends _$MattersStateCopyWithImpl<$Res>
    implements $ErrorMattersStateCopyWith<$Res> {
  _$ErrorMattersStateCopyWithImpl(
      ErrorMattersState _value, $Res Function(ErrorMattersState) _then)
      : super(_value, (v) => _then(v as ErrorMattersState));

  @override
  ErrorMattersState get _value => super._value as ErrorMattersState;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(ErrorMattersState(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorMattersState extends ErrorMattersState {
  const _$ErrorMattersState(this.errorMessage) : super._();

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'MattersState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorMattersState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $ErrorMattersStateCopyWith<ErrorMattersState> get copyWith =>
      _$ErrorMattersStateCopyWithImpl<ErrorMattersState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Matter> data, int selectedPage) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Matter> data, int selectedPage)? fetched,
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
    required TResult Function(InitialMattersState value) initial,
    required TResult Function(FetchingMattersState value) fetching,
    required TResult Function(FetchedMattersState value) fetched,
    required TResult Function(ErrorMattersState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMattersState value)? initial,
    TResult Function(FetchingMattersState value)? fetching,
    TResult Function(FetchedMattersState value)? fetched,
    TResult Function(ErrorMattersState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMattersState extends MattersState {
  const factory ErrorMattersState(String errorMessage) = _$ErrorMattersState;
  const ErrorMattersState._() : super._();

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorMattersStateCopyWith<ErrorMattersState> get copyWith =>
      throw _privateConstructorUsedError;
}
