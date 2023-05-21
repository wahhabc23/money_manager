// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTransactions,
    required TResult Function(TransactionModel transaction) addTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel transaction) updateTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTransactions,
    TResult? Function(TransactionModel transaction)? addTransaction,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(TransactionModel transaction)? updateTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTransactions,
    TResult Function(TransactionModel transaction)? addTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel transaction)? updateTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactions value) getTransactions,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTransactions value)? getTransactions,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(_DeleteTransaction value)? deleteTransaction,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactions value)? getTransactions,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsEventCopyWith<$Res> {
  factory $TransactionsEventCopyWith(
          TransactionsEvent value, $Res Function(TransactionsEvent) then) =
      _$TransactionsEventCopyWithImpl<$Res, TransactionsEvent>;
}

/// @nodoc
class _$TransactionsEventCopyWithImpl<$Res, $Val extends TransactionsEvent>
    implements $TransactionsEventCopyWith<$Res> {
  _$TransactionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetTransactionsCopyWith<$Res> {
  factory _$$_GetTransactionsCopyWith(
          _$_GetTransactions value, $Res Function(_$_GetTransactions) then) =
      __$$_GetTransactionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetTransactionsCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$_GetTransactions>
    implements _$$_GetTransactionsCopyWith<$Res> {
  __$$_GetTransactionsCopyWithImpl(
      _$_GetTransactions _value, $Res Function(_$_GetTransactions) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetTransactions implements _GetTransactions {
  const _$_GetTransactions();

  @override
  String toString() {
    return 'TransactionsEvent.getTransactions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetTransactions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTransactions,
    required TResult Function(TransactionModel transaction) addTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel transaction) updateTransaction,
  }) {
    return getTransactions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTransactions,
    TResult? Function(TransactionModel transaction)? addTransaction,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(TransactionModel transaction)? updateTransaction,
  }) {
    return getTransactions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTransactions,
    TResult Function(TransactionModel transaction)? addTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel transaction)? updateTransaction,
    required TResult orElse(),
  }) {
    if (getTransactions != null) {
      return getTransactions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactions value) getTransactions,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
  }) {
    return getTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTransactions value)? getTransactions,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(_DeleteTransaction value)? deleteTransaction,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
  }) {
    return getTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactions value)? getTransactions,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    required TResult orElse(),
  }) {
    if (getTransactions != null) {
      return getTransactions(this);
    }
    return orElse();
  }
}

abstract class _GetTransactions implements TransactionsEvent {
  const factory _GetTransactions() = _$_GetTransactions;
}

/// @nodoc
abstract class _$$_AddTransactionCopyWith<$Res> {
  factory _$$_AddTransactionCopyWith(
          _$_AddTransaction value, $Res Function(_$_AddTransaction) then) =
      __$$_AddTransactionCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel transaction});
}

/// @nodoc
class __$$_AddTransactionCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$_AddTransaction>
    implements _$$_AddTransactionCopyWith<$Res> {
  __$$_AddTransactionCopyWithImpl(
      _$_AddTransaction _value, $Res Function(_$_AddTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$_AddTransaction(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$_AddTransaction implements _AddTransaction {
  const _$_AddTransaction({required this.transaction});

  @override
  final TransactionModel transaction;

  @override
  String toString() {
    return 'TransactionsEvent.addTransaction(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTransaction &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTransactionCopyWith<_$_AddTransaction> get copyWith =>
      __$$_AddTransactionCopyWithImpl<_$_AddTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTransactions,
    required TResult Function(TransactionModel transaction) addTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel transaction) updateTransaction,
  }) {
    return addTransaction(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTransactions,
    TResult? Function(TransactionModel transaction)? addTransaction,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(TransactionModel transaction)? updateTransaction,
  }) {
    return addTransaction?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTransactions,
    TResult Function(TransactionModel transaction)? addTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel transaction)? updateTransaction,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactions value) getTransactions,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
  }) {
    return addTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTransactions value)? getTransactions,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(_DeleteTransaction value)? deleteTransaction,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
  }) {
    return addTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactions value)? getTransactions,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    required TResult orElse(),
  }) {
    if (addTransaction != null) {
      return addTransaction(this);
    }
    return orElse();
  }
}

abstract class _AddTransaction implements TransactionsEvent {
  const factory _AddTransaction({required final TransactionModel transaction}) =
      _$_AddTransaction;

  TransactionModel get transaction;
  @JsonKey(ignore: true)
  _$$_AddTransactionCopyWith<_$_AddTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteTransactionCopyWith<$Res> {
  factory _$$_DeleteTransactionCopyWith(_$_DeleteTransaction value,
          $Res Function(_$_DeleteTransaction) then) =
      __$$_DeleteTransactionCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteTransactionCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$_DeleteTransaction>
    implements _$$_DeleteTransactionCopyWith<$Res> {
  __$$_DeleteTransactionCopyWithImpl(
      _$_DeleteTransaction _value, $Res Function(_$_DeleteTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteTransaction(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteTransaction implements _DeleteTransaction {
  const _$_DeleteTransaction({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TransactionsEvent.deleteTransaction(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteTransaction &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteTransactionCopyWith<_$_DeleteTransaction> get copyWith =>
      __$$_DeleteTransactionCopyWithImpl<_$_DeleteTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTransactions,
    required TResult Function(TransactionModel transaction) addTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel transaction) updateTransaction,
  }) {
    return deleteTransaction(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTransactions,
    TResult? Function(TransactionModel transaction)? addTransaction,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(TransactionModel transaction)? updateTransaction,
  }) {
    return deleteTransaction?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTransactions,
    TResult Function(TransactionModel transaction)? addTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel transaction)? updateTransaction,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactions value) getTransactions,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
  }) {
    return deleteTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTransactions value)? getTransactions,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(_DeleteTransaction value)? deleteTransaction,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
  }) {
    return deleteTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactions value)? getTransactions,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    required TResult orElse(),
  }) {
    if (deleteTransaction != null) {
      return deleteTransaction(this);
    }
    return orElse();
  }
}

abstract class _DeleteTransaction implements TransactionsEvent {
  const factory _DeleteTransaction({required final int id}) =
      _$_DeleteTransaction;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteTransactionCopyWith<_$_DeleteTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTransactionCopyWith<$Res> {
  factory _$$_UpdateTransactionCopyWith(_$_UpdateTransaction value,
          $Res Function(_$_UpdateTransaction) then) =
      __$$_UpdateTransactionCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel transaction});
}

/// @nodoc
class __$$_UpdateTransactionCopyWithImpl<$Res>
    extends _$TransactionsEventCopyWithImpl<$Res, _$_UpdateTransaction>
    implements _$$_UpdateTransactionCopyWith<$Res> {
  __$$_UpdateTransactionCopyWithImpl(
      _$_UpdateTransaction _value, $Res Function(_$_UpdateTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$_UpdateTransaction(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$_UpdateTransaction implements _UpdateTransaction {
  const _$_UpdateTransaction({required this.transaction});

  @override
  final TransactionModel transaction;

  @override
  String toString() {
    return 'TransactionsEvent.updateTransaction(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTransaction &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateTransactionCopyWith<_$_UpdateTransaction> get copyWith =>
      __$$_UpdateTransactionCopyWithImpl<_$_UpdateTransaction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTransactions,
    required TResult Function(TransactionModel transaction) addTransaction,
    required TResult Function(int id) deleteTransaction,
    required TResult Function(TransactionModel transaction) updateTransaction,
  }) {
    return updateTransaction(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTransactions,
    TResult? Function(TransactionModel transaction)? addTransaction,
    TResult? Function(int id)? deleteTransaction,
    TResult? Function(TransactionModel transaction)? updateTransaction,
  }) {
    return updateTransaction?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTransactions,
    TResult Function(TransactionModel transaction)? addTransaction,
    TResult Function(int id)? deleteTransaction,
    TResult Function(TransactionModel transaction)? updateTransaction,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactions value) getTransactions,
    required TResult Function(_AddTransaction value) addTransaction,
    required TResult Function(_DeleteTransaction value) deleteTransaction,
    required TResult Function(_UpdateTransaction value) updateTransaction,
  }) {
    return updateTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTransactions value)? getTransactions,
    TResult? Function(_AddTransaction value)? addTransaction,
    TResult? Function(_DeleteTransaction value)? deleteTransaction,
    TResult? Function(_UpdateTransaction value)? updateTransaction,
  }) {
    return updateTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactions value)? getTransactions,
    TResult Function(_AddTransaction value)? addTransaction,
    TResult Function(_DeleteTransaction value)? deleteTransaction,
    TResult Function(_UpdateTransaction value)? updateTransaction,
    required TResult orElse(),
  }) {
    if (updateTransaction != null) {
      return updateTransaction(this);
    }
    return orElse();
  }
}

abstract class _UpdateTransaction implements TransactionsEvent {
  const factory _UpdateTransaction(
      {required final TransactionModel transaction}) = _$_UpdateTransaction;

  TransactionModel get transaction;
  @JsonKey(ignore: true)
  _$$_UpdateTransactionCopyWith<_$_UpdateTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<TransactionModel> get transactionsList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionsStateCopyWith<TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsStateCopyWith<$Res> {
  factory $TransactionsStateCopyWith(
          TransactionsState value, $Res Function(TransactionsState) then) =
      _$TransactionsStateCopyWithImpl<$Res, TransactionsState>;
  @useResult
  $Res call(
      {bool isLoading, bool isError, List<TransactionModel> transactionsList});
}

/// @nodoc
class _$TransactionsStateCopyWithImpl<$Res, $Val extends TransactionsState>
    implements $TransactionsStateCopyWith<$Res> {
  _$TransactionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? transactionsList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionsList: null == transactionsList
          ? _value.transactionsList
          : transactionsList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionsStateCopyWith<$Res>
    implements $TransactionsStateCopyWith<$Res> {
  factory _$$_TransactionsStateCopyWith(_$_TransactionsState value,
          $Res Function(_$_TransactionsState) then) =
      __$$_TransactionsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, bool isError, List<TransactionModel> transactionsList});
}

/// @nodoc
class __$$_TransactionsStateCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$_TransactionsState>
    implements _$$_TransactionsStateCopyWith<$Res> {
  __$$_TransactionsStateCopyWithImpl(
      _$_TransactionsState _value, $Res Function(_$_TransactionsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? transactionsList = null,
  }) {
    return _then(_$_TransactionsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionsList: null == transactionsList
          ? _value._transactionsList
          : transactionsList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ));
  }
}

/// @nodoc

class _$_TransactionsState implements _TransactionsState {
  const _$_TransactionsState(
      {required this.isLoading,
      required this.isError,
      required final List<TransactionModel> transactionsList})
      : _transactionsList = transactionsList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<TransactionModel> _transactionsList;
  @override
  List<TransactionModel> get transactionsList {
    if (_transactionsList is EqualUnmodifiableListView)
      return _transactionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionsList);
  }

  @override
  String toString() {
    return 'TransactionsState(isLoading: $isLoading, isError: $isError, transactionsList: $transactionsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._transactionsList, _transactionsList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_transactionsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionsStateCopyWith<_$_TransactionsState> get copyWith =>
      __$$_TransactionsStateCopyWithImpl<_$_TransactionsState>(
          this, _$identity);
}

abstract class _TransactionsState implements TransactionsState {
  const factory _TransactionsState(
          {required final bool isLoading,
          required final bool isError,
          required final List<TransactionModel> transactionsList}) =
      _$_TransactionsState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<TransactionModel> get transactionsList;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionsStateCopyWith<_$_TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
