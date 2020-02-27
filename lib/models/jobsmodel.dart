import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'jobsmodel.g.dart';

abstract class Jobs implements Built<Jobs, JobsBuilder> {
  static Serializer<Jobs> get serializer => _$jobsSerializer;
  // Fields
 BuiltList<Data> get data;
  Jobs._();

  factory Jobs([void Function(JobsBuilder) updates]) = _$Jobs;

  // String toJson() {
  //   return json.encode(serializers.serializeWith(Jobs.serializer, this));
  // }

  // static Jobs fromJson(String jsonString) {
  //   return serializers.deserializeWith(Jobs.serializer, json.decode(jsonString));
  // }

  
}

// abstract class News implements Built<News, NewsBuilder> {
//   // Fields
// Jobs get data;
//   News._();

//   static Serializer<News> get serializer => _$newsSerializer;

//   factory News([void Function(NewsBuilder) updates]) = _$News;
// }

abstract class Data implements Built<Data, DataBuilder> {
  static Serializer<Data> get serializer => _$dataSerializer;
  // Fields
 int get id;
 String get email;
 String get last_name;
 String get first_name;
 String get avatar;
  Data._();

  factory Data([void Function(DataBuilder) updates]) = _$Data;
  
}