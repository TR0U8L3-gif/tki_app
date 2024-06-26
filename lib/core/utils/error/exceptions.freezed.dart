// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppException {
  String get message => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  dynamic get statusCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String description, dynamic statusCode)
        serverException,
    required TResult Function(
            String message, String description, dynamic statusCode)
        cacheException,
    required TResult Function(
            String message, String description, dynamic statusCode)
        unknownException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description, dynamic statusCode)?
        serverException,
    TResult? Function(String message, String description, dynamic statusCode)?
        cacheException,
    TResult? Function(String message, String description, dynamic statusCode)?
        unknownException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description, dynamic statusCode)?
        serverException,
    TResult Function(String message, String description, dynamic statusCode)?
        cacheException,
    TResult Function(String message, String description, dynamic statusCode)?
        unknownException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(UnknownException value) unknownException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException value)? serverException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(UnknownException value)? unknownException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(UnknownException value)? unknownException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppExceptionCopyWith<AppException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res, AppException>;
  @useResult
  $Res call({String message, String description, dynamic statusCode});
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res, $Val extends AppException>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$ServerExceptionImplCopyWith(_$ServerExceptionImpl value,
          $Res Function(_$ServerExceptionImpl) then) =
      __$$ServerExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String description, dynamic statusCode});
}

/// @nodoc
class __$$ServerExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$ServerExceptionImpl>
    implements _$$ServerExceptionImplCopyWith<$Res> {
  __$$ServerExceptionImplCopyWithImpl(
      _$ServerExceptionImpl _value, $Res Function(_$ServerExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$ServerExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ServerExceptionImpl extends ServerException {
  const _$ServerExceptionImpl(
      {required this.message,
      required this.description,
      required this.statusCode})
      : assert(statusCode is int || statusCode is String),
        super._();

  @override
  final String message;
  @override
  final String description;
  @override
  final dynamic statusCode;

  @override
  String toString() {
    return 'AppException.serverException(message: $message, description: $description, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, description,
      const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      __$$ServerExceptionImplCopyWithImpl<_$ServerExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String description, dynamic statusCode)
        serverException,
    required TResult Function(
            String message, String description, dynamic statusCode)
        cacheException,
    required TResult Function(
            String message, String description, dynamic statusCode)
        unknownException,
  }) {
    return serverException(message, description, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description, dynamic statusCode)?
        serverException,
    TResult? Function(String message, String description, dynamic statusCode)?
        cacheException,
    TResult? Function(String message, String description, dynamic statusCode)?
        unknownException,
  }) {
    return serverException?.call(message, description, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description, dynamic statusCode)?
        serverException,
    TResult Function(String message, String description, dynamic statusCode)?
        cacheException,
    TResult Function(String message, String description, dynamic statusCode)?
        unknownException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(message, description, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(UnknownException value) unknownException,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException value)? serverException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(UnknownException value)? unknownException,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(UnknownException value)? unknownException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class ServerException extends AppException implements Exception {
  const factory ServerException(
      {required final String message,
      required final String description,
      required final dynamic statusCode}) = _$ServerExceptionImpl;
  const ServerException._() : super._();

  @override
  String get message;
  @override
  String get description;
  @override
  dynamic get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$CacheExceptionImplCopyWith(_$CacheExceptionImpl value,
          $Res Function(_$CacheExceptionImpl) then) =
      __$$CacheExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String description, dynamic statusCode});
}

/// @nodoc
class __$$CacheExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$CacheExceptionImpl>
    implements _$$CacheExceptionImplCopyWith<$Res> {
  __$$CacheExceptionImplCopyWithImpl(
      _$CacheExceptionImpl _value, $Res Function(_$CacheExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$CacheExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CacheExceptionImpl extends CacheException {
  const _$CacheExceptionImpl(
      {required this.message,
      required this.description,
      required this.statusCode})
      : assert(statusCode is int || statusCode is String),
        super._();

  @override
  final String message;
  @override
  final String description;
  @override
  final dynamic statusCode;

  @override
  String toString() {
    return 'AppException.cacheException(message: $message, description: $description, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, description,
      const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheExceptionImplCopyWith<_$CacheExceptionImpl> get copyWith =>
      __$$CacheExceptionImplCopyWithImpl<_$CacheExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String description, dynamic statusCode)
        serverException,
    required TResult Function(
            String message, String description, dynamic statusCode)
        cacheException,
    required TResult Function(
            String message, String description, dynamic statusCode)
        unknownException,
  }) {
    return cacheException(message, description, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description, dynamic statusCode)?
        serverException,
    TResult? Function(String message, String description, dynamic statusCode)?
        cacheException,
    TResult? Function(String message, String description, dynamic statusCode)?
        unknownException,
  }) {
    return cacheException?.call(message, description, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description, dynamic statusCode)?
        serverException,
    TResult Function(String message, String description, dynamic statusCode)?
        cacheException,
    TResult Function(String message, String description, dynamic statusCode)?
        unknownException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(message, description, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(UnknownException value) unknownException,
  }) {
    return cacheException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException value)? serverException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(UnknownException value)? unknownException,
  }) {
    return cacheException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(UnknownException value)? unknownException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(this);
    }
    return orElse();
  }
}

abstract class CacheException extends AppException implements Exception {
  const factory CacheException(
      {required final String message,
      required final String description,
      required final dynamic statusCode}) = _$CacheExceptionImpl;
  const CacheException._() : super._();

  @override
  String get message;
  @override
  String get description;
  @override
  dynamic get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$CacheExceptionImplCopyWith<_$CacheExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$UnknownExceptionImplCopyWith(_$UnknownExceptionImpl value,
          $Res Function(_$UnknownExceptionImpl) then) =
      __$$UnknownExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String description, dynamic statusCode});
}

/// @nodoc
class __$$UnknownExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$UnknownExceptionImpl>
    implements _$$UnknownExceptionImplCopyWith<$Res> {
  __$$UnknownExceptionImplCopyWithImpl(_$UnknownExceptionImpl _value,
      $Res Function(_$UnknownExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? description = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$UnknownExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UnknownExceptionImpl extends UnknownException {
  const _$UnknownExceptionImpl(
      {required this.message,
      required this.description,
      required this.statusCode})
      : assert(statusCode is int || statusCode is String),
        super._();

  @override
  final String message;
  @override
  final String description;
  @override
  final dynamic statusCode;

  @override
  String toString() {
    return 'AppException.unknownException(message: $message, description: $description, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, description,
      const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownExceptionImplCopyWith<_$UnknownExceptionImpl> get copyWith =>
      __$$UnknownExceptionImplCopyWithImpl<_$UnknownExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, String description, dynamic statusCode)
        serverException,
    required TResult Function(
            String message, String description, dynamic statusCode)
        cacheException,
    required TResult Function(
            String message, String description, dynamic statusCode)
        unknownException,
  }) {
    return unknownException(message, description, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, String description, dynamic statusCode)?
        serverException,
    TResult? Function(String message, String description, dynamic statusCode)?
        cacheException,
    TResult? Function(String message, String description, dynamic statusCode)?
        unknownException,
  }) {
    return unknownException?.call(message, description, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, String description, dynamic statusCode)?
        serverException,
    TResult Function(String message, String description, dynamic statusCode)?
        cacheException,
    TResult Function(String message, String description, dynamic statusCode)?
        unknownException,
    required TResult orElse(),
  }) {
    if (unknownException != null) {
      return unknownException(message, description, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(UnknownException value) unknownException,
  }) {
    return unknownException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException value)? serverException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(UnknownException value)? unknownException,
  }) {
    return unknownException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(UnknownException value)? unknownException,
    required TResult orElse(),
  }) {
    if (unknownException != null) {
      return unknownException(this);
    }
    return orElse();
  }
}

abstract class UnknownException extends AppException implements Exception {
  const factory UnknownException(
      {required final String message,
      required final String description,
      required final dynamic statusCode}) = _$UnknownExceptionImpl;
  const UnknownException._() : super._();

  @override
  String get message;
  @override
  String get description;
  @override
  dynamic get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$UnknownExceptionImplCopyWith<_$UnknownExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
