import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:peoplejobs/models/jobsmodel.dart';
import 'package:peoplejobs/models/serializer.dart';
class HttpService{
static Future <Jobs>getJobs() async{
  final  String url ="https://reqres.in/api/users";
  final res = await http.get(url);
   
  
 // Jobs jobs = serializers.deserializeWith(Jobs.serializer, jsonDecode(res.body));
  Jobs jobs = standardSerializers.deserializeWith(Jobs.serializer, jsonDecode(res.body));
  print("jobs total"+ jobs.total.toString());
  return jobs;



}
}
