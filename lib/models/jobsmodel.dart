import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'jobsmodel.g.dart';

abstract class Jobs implements Built<Jobs, JobsBuilder> {

 int get page;
 int get per_page;
 int get total;
 int get total_pages;

 BuiltList<Data> get data;

 // Boilerplate code needed to wire-up generated code
 Jobs._();
 factory Jobs([updates(JobsBuilder b)]) = _$Jobs;
 static Serializer<Jobs> get serializer => _$jobsSerializer;


}

abstract class Data implements Built<Data, DataBuilder> {

 // Various fields
 int get id;
 String get email;
 String get first_name;
 String get last_name;
 String get avatar;


 // Boilerplate code needed to wire-up generated code
 Data._();
 factory Data([updates(DataBuilder b)]) = _$Data;
 static Serializer<Data> get serializer => _$dataSerializer;
}
