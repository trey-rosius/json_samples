// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobsmodel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Jobs> _$jobsSerializer = new _$JobsSerializer();
Serializer<Data> _$dataSerializer = new _$DataSerializer();

class _$JobsSerializer implements StructuredSerializer<Jobs> {
  @override
  final Iterable<Type> types = const [Jobs, _$Jobs];
  @override
  final String wireName = 'Jobs';

  @override
  Iterable<Object> serialize(Serializers serializers, Jobs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'per_page',
      serializers.serialize(object.per_page,
          specifiedType: const FullType(int)),
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
      'total_pages',
      serializers.serialize(object.total_pages,
          specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Data)])),
    ];

    return result;
  }

  @override
  Jobs deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'per_page':
          result.per_page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_pages':
          result.total_pages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Data)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DataSerializer implements StructuredSerializer<Data> {
  @override
  final Iterable<Type> types = const [Data, _$Data];
  @override
  final String wireName = 'Data';

  @override
  Iterable<Object> serialize(Serializers serializers, Data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'first_name',
      serializers.serialize(object.first_name,
          specifiedType: const FullType(String)),
      'last_name',
      serializers.serialize(object.last_name,
          specifiedType: const FullType(String)),
      'avatar',
      serializers.serialize(object.avatar,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Data deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'first_name':
          result.first_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_name':
          result.last_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Jobs extends Jobs {
  @override
  final int page;
  @override
  final int per_page;
  @override
  final int total;
  @override
  final int total_pages;
  @override
  final BuiltList<Data> data;

  factory _$Jobs([void Function(JobsBuilder) updates]) =>
      (new JobsBuilder()..update(updates)).build();

  _$Jobs._({this.page, this.per_page, this.total, this.total_pages, this.data})
      : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('Jobs', 'page');
    }
    if (per_page == null) {
      throw new BuiltValueNullFieldError('Jobs', 'per_page');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError('Jobs', 'total');
    }
    if (total_pages == null) {
      throw new BuiltValueNullFieldError('Jobs', 'total_pages');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('Jobs', 'data');
    }
  }

  @override
  Jobs rebuild(void Function(JobsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobsBuilder toBuilder() => new JobsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Jobs &&
        page == other.page &&
        per_page == other.per_page &&
        total == other.total &&
        total_pages == other.total_pages &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, page.hashCode), per_page.hashCode), total.hashCode),
            total_pages.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Jobs')
          ..add('page', page)
          ..add('per_page', per_page)
          ..add('total', total)
          ..add('total_pages', total_pages)
          ..add('data', data))
        .toString();
  }
}

class JobsBuilder implements Builder<Jobs, JobsBuilder> {
  _$Jobs _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _per_page;
  int get per_page => _$this._per_page;
  set per_page(int per_page) => _$this._per_page = per_page;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _total_pages;
  int get total_pages => _$this._total_pages;
  set total_pages(int total_pages) => _$this._total_pages = total_pages;

  ListBuilder<Data> _data;
  ListBuilder<Data> get data => _$this._data ??= new ListBuilder<Data>();
  set data(ListBuilder<Data> data) => _$this._data = data;

  JobsBuilder();

  JobsBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _per_page = _$v.per_page;
      _total = _$v.total;
      _total_pages = _$v.total_pages;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Jobs other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Jobs;
  }

  @override
  void update(void Function(JobsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Jobs build() {
    _$Jobs _$result;
    try {
      _$result = _$v ??
          new _$Jobs._(
              page: page,
              per_page: per_page,
              total: total,
              total_pages: total_pages,
              data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Jobs', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Data extends Data {
  @override
  final int id;
  @override
  final String email;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String avatar;

  factory _$Data([void Function(DataBuilder) updates]) =>
      (new DataBuilder()..update(updates)).build();

  _$Data._({this.id, this.email, this.first_name, this.last_name, this.avatar})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Data', 'id');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('Data', 'email');
    }
    if (first_name == null) {
      throw new BuiltValueNullFieldError('Data', 'first_name');
    }
    if (last_name == null) {
      throw new BuiltValueNullFieldError('Data', 'last_name');
    }
    if (avatar == null) {
      throw new BuiltValueNullFieldError('Data', 'avatar');
    }
  }

  @override
  Data rebuild(void Function(DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataBuilder toBuilder() => new DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Data &&
        id == other.id &&
        email == other.email &&
        first_name == other.first_name &&
        last_name == other.last_name &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), email.hashCode), first_name.hashCode),
            last_name.hashCode),
        avatar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Data')
          ..add('id', id)
          ..add('email', email)
          ..add('first_name', first_name)
          ..add('last_name', last_name)
          ..add('avatar', avatar))
        .toString();
  }
}

class DataBuilder implements Builder<Data, DataBuilder> {
  _$Data _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _first_name;
  String get first_name => _$this._first_name;
  set first_name(String first_name) => _$this._first_name = first_name;

  String _last_name;
  String get last_name => _$this._last_name;
  set last_name(String last_name) => _$this._last_name = last_name;

  String _avatar;
  String get avatar => _$this._avatar;
  set avatar(String avatar) => _$this._avatar = avatar;

  DataBuilder();

  DataBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _email = _$v.email;
      _first_name = _$v.first_name;
      _last_name = _$v.last_name;
      _avatar = _$v.avatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Data other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Data;
  }

  @override
  void update(void Function(DataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Data build() {
    final _$result = _$v ??
        new _$Data._(
            id: id,
            email: email,
            first_name: first_name,
            last_name: last_name,
            avatar: avatar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
