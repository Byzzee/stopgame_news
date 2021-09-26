// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'videos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VideosEventTearOff {
  const _$VideosEventTearOff();

  RefreshVideosEvent refresh({int? page}) {
    return RefreshVideosEvent(
      page: page,
    );
  }
}

/// @nodoc
const $VideosEvent = _$VideosEventTearOff();

/// @nodoc
mixin _$VideosEvent {
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
    required TResult Function(RefreshVideosEvent value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshVideosEvent value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideosEventCopyWith<VideosEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosEventCopyWith<$Res> {
  factory $VideosEventCopyWith(
          VideosEvent value, $Res Function(VideosEvent) then) =
      _$VideosEventCopyWithImpl<$Res>;
  $Res call({int? page});
}

/// @nodoc
class _$VideosEventCopyWithImpl<$Res> implements $VideosEventCopyWith<$Res> {
  _$VideosEventCopyWithImpl(this._value, this._then);

  final VideosEvent _value;
  // ignore: unused_field
  final $Res Function(VideosEvent) _then;

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
abstract class $RefreshVideosEventCopyWith<$Res>
    implements $VideosEventCopyWith<$Res> {
  factory $RefreshVideosEventCopyWith(
          RefreshVideosEvent value, $Res Function(RefreshVideosEvent) then) =
      _$RefreshVideosEventCopyWithImpl<$Res>;
  @override
  $Res call({int? page});
}

/// @nodoc
class _$RefreshVideosEventCopyWithImpl<$Res>
    extends _$VideosEventCopyWithImpl<$Res>
    implements $RefreshVideosEventCopyWith<$Res> {
  _$RefreshVideosEventCopyWithImpl(
      RefreshVideosEvent _value, $Res Function(RefreshVideosEvent) _then)
      : super(_value, (v) => _then(v as RefreshVideosEvent));

  @override
  RefreshVideosEvent get _value => super._value as RefreshVideosEvent;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(RefreshVideosEvent(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RefreshVideosEvent extends RefreshVideosEvent {
  const _$RefreshVideosEvent({this.page}) : super._();

  @override
  final int? page;

  @override
  String toString() {
    return 'VideosEvent.refresh(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshVideosEvent &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  $RefreshVideosEventCopyWith<RefreshVideosEvent> get copyWith =>
      _$RefreshVideosEventCopyWithImpl<RefreshVideosEvent>(this, _$identity);

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
    required TResult Function(RefreshVideosEvent value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshVideosEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshVideosEvent extends VideosEvent {
  const factory RefreshVideosEvent({int? page}) = _$RefreshVideosEvent;
  const RefreshVideosEvent._() : super._();

  @override
  int? get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RefreshVideosEventCopyWith<RefreshVideosEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VideosStateTearOff {
  const _$VideosStateTearOff();

  InitialVideosState initial() {
    return const InitialVideosState();
  }

  FetchingVideosState fetching() {
    return const FetchingVideosState();
  }

  FetchedVideosState fetched(List<Video> data, int selectedPage) {
    return FetchedVideosState(
      data,
      selectedPage,
    );
  }

  ErrorVideosState error(String errorMessage) {
    return ErrorVideosState(
      errorMessage,
    );
  }
}

/// @nodoc
const $VideosState = _$VideosStateTearOff();

/// @nodoc
mixin _$VideosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Video> data, int selectedPage) fetched,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Video> data, int selectedPage)? fetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialVideosState value) initial,
    required TResult Function(FetchingVideosState value) fetching,
    required TResult Function(FetchedVideosState value) fetched,
    required TResult Function(ErrorVideosState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialVideosState value)? initial,
    TResult Function(FetchingVideosState value)? fetching,
    TResult Function(FetchedVideosState value)? fetched,
    TResult Function(ErrorVideosState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosStateCopyWith<$Res> {
  factory $VideosStateCopyWith(
          VideosState value, $Res Function(VideosState) then) =
      _$VideosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideosStateCopyWithImpl<$Res> implements $VideosStateCopyWith<$Res> {
  _$VideosStateCopyWithImpl(this._value, this._then);

  final VideosState _value;
  // ignore: unused_field
  final $Res Function(VideosState) _then;
}

/// @nodoc
abstract class $InitialVideosStateCopyWith<$Res> {
  factory $InitialVideosStateCopyWith(
          InitialVideosState value, $Res Function(InitialVideosState) then) =
      _$InitialVideosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialVideosStateCopyWithImpl<$Res>
    extends _$VideosStateCopyWithImpl<$Res>
    implements $InitialVideosStateCopyWith<$Res> {
  _$InitialVideosStateCopyWithImpl(
      InitialVideosState _value, $Res Function(InitialVideosState) _then)
      : super(_value, (v) => _then(v as InitialVideosState));

  @override
  InitialVideosState get _value => super._value as InitialVideosState;
}

/// @nodoc

class _$InitialVideosState extends InitialVideosState {
  const _$InitialVideosState() : super._();

  @override
  String toString() {
    return 'VideosState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialVideosState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Video> data, int selectedPage) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Video> data, int selectedPage)? fetched,
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
    required TResult Function(InitialVideosState value) initial,
    required TResult Function(FetchingVideosState value) fetching,
    required TResult Function(FetchedVideosState value) fetched,
    required TResult Function(ErrorVideosState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialVideosState value)? initial,
    TResult Function(FetchingVideosState value)? fetching,
    TResult Function(FetchedVideosState value)? fetched,
    TResult Function(ErrorVideosState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialVideosState extends VideosState {
  const factory InitialVideosState() = _$InitialVideosState;
  const InitialVideosState._() : super._();
}

/// @nodoc
abstract class $FetchingVideosStateCopyWith<$Res> {
  factory $FetchingVideosStateCopyWith(
          FetchingVideosState value, $Res Function(FetchingVideosState) then) =
      _$FetchingVideosStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchingVideosStateCopyWithImpl<$Res>
    extends _$VideosStateCopyWithImpl<$Res>
    implements $FetchingVideosStateCopyWith<$Res> {
  _$FetchingVideosStateCopyWithImpl(
      FetchingVideosState _value, $Res Function(FetchingVideosState) _then)
      : super(_value, (v) => _then(v as FetchingVideosState));

  @override
  FetchingVideosState get _value => super._value as FetchingVideosState;
}

/// @nodoc

class _$FetchingVideosState extends FetchingVideosState {
  const _$FetchingVideosState() : super._();

  @override
  String toString() {
    return 'VideosState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchingVideosState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Video> data, int selectedPage) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Video> data, int selectedPage)? fetched,
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
    required TResult Function(InitialVideosState value) initial,
    required TResult Function(FetchingVideosState value) fetching,
    required TResult Function(FetchedVideosState value) fetched,
    required TResult Function(ErrorVideosState value) error,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialVideosState value)? initial,
    TResult Function(FetchingVideosState value)? fetching,
    TResult Function(FetchedVideosState value)? fetched,
    TResult Function(ErrorVideosState value)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class FetchingVideosState extends VideosState {
  const factory FetchingVideosState() = _$FetchingVideosState;
  const FetchingVideosState._() : super._();
}

/// @nodoc
abstract class $FetchedVideosStateCopyWith<$Res> {
  factory $FetchedVideosStateCopyWith(
          FetchedVideosState value, $Res Function(FetchedVideosState) then) =
      _$FetchedVideosStateCopyWithImpl<$Res>;
  $Res call({List<Video> data, int selectedPage});
}

/// @nodoc
class _$FetchedVideosStateCopyWithImpl<$Res>
    extends _$VideosStateCopyWithImpl<$Res>
    implements $FetchedVideosStateCopyWith<$Res> {
  _$FetchedVideosStateCopyWithImpl(
      FetchedVideosState _value, $Res Function(FetchedVideosState) _then)
      : super(_value, (v) => _then(v as FetchedVideosState));

  @override
  FetchedVideosState get _value => super._value as FetchedVideosState;

  @override
  $Res call({
    Object? data = freezed,
    Object? selectedPage = freezed,
  }) {
    return _then(FetchedVideosState(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      selectedPage == freezed
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchedVideosState extends FetchedVideosState {
  const _$FetchedVideosState(this.data, this.selectedPage) : super._();

  @override
  final List<Video> data;
  @override
  final int selectedPage;

  @override
  String toString() {
    return 'VideosState.fetched(data: $data, selectedPage: $selectedPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchedVideosState &&
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
  $FetchedVideosStateCopyWith<FetchedVideosState> get copyWith =>
      _$FetchedVideosStateCopyWithImpl<FetchedVideosState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Video> data, int selectedPage) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return fetched(data, selectedPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Video> data, int selectedPage)? fetched,
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
    required TResult Function(InitialVideosState value) initial,
    required TResult Function(FetchingVideosState value) fetching,
    required TResult Function(FetchedVideosState value) fetched,
    required TResult Function(ErrorVideosState value) error,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialVideosState value)? initial,
    TResult Function(FetchingVideosState value)? fetching,
    TResult Function(FetchedVideosState value)? fetched,
    TResult Function(ErrorVideosState value)? error,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class FetchedVideosState extends VideosState {
  const factory FetchedVideosState(List<Video> data, int selectedPage) =
      _$FetchedVideosState;
  const FetchedVideosState._() : super._();

  List<Video> get data => throw _privateConstructorUsedError;
  int get selectedPage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchedVideosStateCopyWith<FetchedVideosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorVideosStateCopyWith<$Res> {
  factory $ErrorVideosStateCopyWith(
          ErrorVideosState value, $Res Function(ErrorVideosState) then) =
      _$ErrorVideosStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$ErrorVideosStateCopyWithImpl<$Res>
    extends _$VideosStateCopyWithImpl<$Res>
    implements $ErrorVideosStateCopyWith<$Res> {
  _$ErrorVideosStateCopyWithImpl(
      ErrorVideosState _value, $Res Function(ErrorVideosState) _then)
      : super(_value, (v) => _then(v as ErrorVideosState));

  @override
  ErrorVideosState get _value => super._value as ErrorVideosState;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(ErrorVideosState(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorVideosState extends ErrorVideosState {
  const _$ErrorVideosState(this.errorMessage) : super._();

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'VideosState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorVideosState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $ErrorVideosStateCopyWith<ErrorVideosState> get copyWith =>
      _$ErrorVideosStateCopyWithImpl<ErrorVideosState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<Video> data, int selectedPage) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<Video> data, int selectedPage)? fetched,
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
    required TResult Function(InitialVideosState value) initial,
    required TResult Function(FetchingVideosState value) fetching,
    required TResult Function(FetchedVideosState value) fetched,
    required TResult Function(ErrorVideosState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialVideosState value)? initial,
    TResult Function(FetchingVideosState value)? fetching,
    TResult Function(FetchedVideosState value)? fetched,
    TResult Function(ErrorVideosState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorVideosState extends VideosState {
  const factory ErrorVideosState(String errorMessage) = _$ErrorVideosState;
  const ErrorVideosState._() : super._();

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorVideosStateCopyWith<ErrorVideosState> get copyWith =>
      throw _privateConstructorUsedError;
}
