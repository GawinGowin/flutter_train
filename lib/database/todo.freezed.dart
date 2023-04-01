// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ToDoRecord {
  int get key => throw _privateConstructorUsedError;
  ToDo get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToDoRecordCopyWith<ToDoRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoRecordCopyWith<$Res> {
  factory $ToDoRecordCopyWith(
          ToDoRecord value, $Res Function(ToDoRecord) then) =
      _$ToDoRecordCopyWithImpl<$Res, ToDoRecord>;
  @useResult
  $Res call({int key, ToDo value});

  $ToDoCopyWith<$Res> get value;
}

/// @nodoc
class _$ToDoRecordCopyWithImpl<$Res, $Val extends ToDoRecord>
    implements $ToDoRecordCopyWith<$Res> {
  _$ToDoRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ToDo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ToDoCopyWith<$Res> get value {
    return $ToDoCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ToDoRecordCopyWith<$Res>
    implements $ToDoRecordCopyWith<$Res> {
  factory _$$_ToDoRecordCopyWith(
          _$_ToDoRecord value, $Res Function(_$_ToDoRecord) then) =
      __$$_ToDoRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int key, ToDo value});

  @override
  $ToDoCopyWith<$Res> get value;
}

/// @nodoc
class __$$_ToDoRecordCopyWithImpl<$Res>
    extends _$ToDoRecordCopyWithImpl<$Res, _$_ToDoRecord>
    implements _$$_ToDoRecordCopyWith<$Res> {
  __$$_ToDoRecordCopyWithImpl(
      _$_ToDoRecord _value, $Res Function(_$_ToDoRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$_ToDoRecord(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ToDo,
    ));
  }
}

/// @nodoc

class _$_ToDoRecord implements _ToDoRecord {
  _$_ToDoRecord(this.key, this.value);

  @override
  final int key;
  @override
  final ToDo value;

  @override
  String toString() {
    return 'ToDoRecord(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToDoRecord &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToDoRecordCopyWith<_$_ToDoRecord> get copyWith =>
      __$$_ToDoRecordCopyWithImpl<_$_ToDoRecord>(this, _$identity);
}

abstract class _ToDoRecord implements ToDoRecord {
  factory _ToDoRecord(final int key, final ToDo value) = _$_ToDoRecord;

  @override
  int get key;
  @override
  ToDo get value;
  @override
  @JsonKey(ignore: true)
  _$$_ToDoRecordCopyWith<_$_ToDoRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

ToDo _$ToDoFromJson(Map<String, dynamic> json) {
  return _ToDo.fromJson(json);
}

/// @nodoc
mixin _$ToDo {
  /// ToDoのタイトルです
  String get title => throw _privateConstructorUsedError;

  /// ToDoの完了状態です
  bool get archived => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoCopyWith<ToDo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoCopyWith<$Res> {
  factory $ToDoCopyWith(ToDo value, $Res Function(ToDo) then) =
      _$ToDoCopyWithImpl<$Res, ToDo>;
  @useResult
  $Res call({String title, bool archived});
}

/// @nodoc
class _$ToDoCopyWithImpl<$Res, $Val extends ToDo>
    implements $ToDoCopyWith<$Res> {
  _$ToDoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? archived = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ToDoCopyWith<$Res> implements $ToDoCopyWith<$Res> {
  factory _$$_ToDoCopyWith(_$_ToDo value, $Res Function(_$_ToDo) then) =
      __$$_ToDoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, bool archived});
}

/// @nodoc
class __$$_ToDoCopyWithImpl<$Res> extends _$ToDoCopyWithImpl<$Res, _$_ToDo>
    implements _$$_ToDoCopyWith<$Res> {
  __$$_ToDoCopyWithImpl(_$_ToDo _value, $Res Function(_$_ToDo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? archived = null,
  }) {
    return _then(_$_ToDo(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ToDo implements _ToDo {
  _$_ToDo({required this.title, this.archived = false});

  factory _$_ToDo.fromJson(Map<String, dynamic> json) => _$$_ToDoFromJson(json);

  /// ToDoのタイトルです
  @override
  final String title;

  /// ToDoの完了状態です
  @override
  @JsonKey()
  final bool archived;

  @override
  String toString() {
    return 'ToDo(title: $title, archived: $archived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToDo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.archived, archived) ||
                other.archived == archived));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, archived);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToDoCopyWith<_$_ToDo> get copyWith =>
      __$$_ToDoCopyWithImpl<_$_ToDo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToDoToJson(
      this,
    );
  }
}

abstract class _ToDo implements ToDo {
  factory _ToDo({required final String title, final bool archived}) = _$_ToDo;

  factory _ToDo.fromJson(Map<String, dynamic> json) = _$_ToDo.fromJson;

  @override

  /// ToDoのタイトルです
  String get title;
  @override

  /// ToDoの完了状態です
  bool get archived;
  @override
  @JsonKey(ignore: true)
  _$$_ToDoCopyWith<_$_ToDo> get copyWith => throw _privateConstructorUsedError;
}
