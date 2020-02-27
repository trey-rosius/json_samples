import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:peoplejobs/models/jobsmodel.dart';
import 'package:built_collection/built_collection.dart';


part 'serializer.g.dart';

@SerializersFor(const[
  Jobs,
])
final Serializers serializers = _$serializers;

Serializers standardSerializers = 
    (serializers.toBuilder()..addPlugin( StandardJsonPlugin())).build();