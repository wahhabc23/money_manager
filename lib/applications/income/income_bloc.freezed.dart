// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IncomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeEventCopyWith<$Res> {
  factory $IncomeEventCopyWith(
          IncomeEvent value, $Res Function(IncomeEvent) then) =
      _$IncomeEventCopyWithImpl<$Res, IncomeEvent>;
}

/// @nodoc
class _$IncomeEventCopyWithImpl<$Res, $Val extends IncomeEvent>
    implements $IncomeEventCopyWith<$Res> {
  _$IncomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$IncomeEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'IncomeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements IncomeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$IncomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<TransactionModel> get incomeList => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IncomeStateCopyWith<IncomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeStateCopyWith<$Res> {
  factory $IncomeStateCopyWith(
          IncomeState value, $Res Function(IncomeState) then) =
      _$IncomeStateCopyWithImpl<$Res, IncomeState>;
  @useResult
  $Res call({bool isLoading, List<TransactionModel> incomeList, bool isError});
}

/// @nodoc
class _$IncomeStateCopyWithImpl<$Res, $Val extends IncomeState>
    implements $IncomeStateCopyWith<$Res> {
  _$IncomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? incomeList = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      incomeList: null == incomeList
          ? _value.incomeList
          : incomeList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IncomeStateCopyWith<$Res>
    implements $IncomeStateCopyWith<$Res> {
  factory _$$_IncomeStateCopyWith(
          _$_IncomeState value, $Res Function(_$_IncomeState) then) =
      __$$_IncomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<TransactionModel> incomeList, bool isError});
}

/// @nodoc
class __$$_IncomeStateCopyWithImpl<$Res>
    extends _$IncomeStateCopyWithImpl<$Res, _$_IncomeState>
    implements _$$_IncomeStateCopyWith<$Res> {
  __$$_IncomeStateCopyWithImpl(
      _$_IncomeState _value, $Res Function(_$_IncomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? incomeList = null,
    Object? isError = null,
  }) {
    return _then(_$_IncomeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      incomeList: null == incomeList
          ? _value._incomeList
          : incomeList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IncomeState implements _IncomeState {
  const _$_IncomeState(
      {required this.isLoading,
      required final List<TransactionModel> incomeList,
      required this.isError})
      : _incomeList = incomeList;

  @override
  final bool isLoading;
  final List<TransactionModel> _incomeList;
  @override
  List<TransactionModel> get incomeList {
    if (_incomeList is EqualUnmodifiableListView) return _incomeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomeList);
  }

  @override
  final bool isError;

  @override
  String toString() {
    return 'IncomeState(isLoading: $isLoading, incomeList: $incomeList, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncomeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._incomeList, _incomeList) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_incomeList), isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncomeStateCopyWith<_$_IncomeState> get copyWith =>
      __$$_IncomeStateCopyWithImpl<_$_IncomeState>(this, _$identity);
}

abstract class _IncomeState implements IncomeState {
  const factory _IncomeState(
      {required final bool isLoading,
      required final List<TransactionModel> incomeList,
      required final bool isError}) = _$_IncomeState;

  @override
  bool get isLoading;
  @override
  List<TransactionModel> get incomeList;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_IncomeStateCopyWith<_$_IncomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
