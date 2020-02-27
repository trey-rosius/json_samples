import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:peoplejobs/models/jobsmodel.dart';
import 'package:peoplejobs/models/serializer.dart';
class HttpService{
Future <Jobs>getJobs() async{
  final  String url ="https://reqres.in/api/users";
  final res = await http.get(url);
  if (res.statusCode == 200) {
   
  
  //Jobs jobs = serializers.deserializeWith(Jobs.serializer, jsonDecode(res.body));
  Map<String, dynamic> body= json.decode(res.body);
  //List<dynamic>.from(body.map((dynamic item)=> item)).toList();
 // return body;
  var th= List<Map<String, dynamic>>.from(body['data']);
 final st = th.map((dynamic item)=> item).toList();
// List<Jobs> jobs = body.map((dynamic item)=>Jobs.fromJson (item)).toList();
 //return st;
  print(st);
 // List<dynamic> jobs = body.map((dynamic item)=> item).toList();
  
  //jsonDecode(res.body);

   // return jobs.data.map((Data data)=>Jobs() ).toList();

  }else{
    throw 'cant get jobs';
  }
}
}
// final _data = List<dynamic>.from(
//   data.map<dynamic>(
//     (dynamic item) => item,
//   ),
// );

//internal linkedmapsapi


// class HttpService{
//   List  httpService =[] ;
//  final  String url ="https://reqres.in/api/users";
//  Future<List<Jobs>> getJobs() async{
// final res = await http.get(url);
// if (res.statusCode == 200) {
//   Map body = jsonDecode(res.body);
//  final httpService =body["data"];
// return httpService;
// }else{
//   throw 'cant get jbs';
// }

//  }

// }
// class HttpService{
//  final  String url ="https://reqres.in/api/users";
//  Future<List<Jobs>> getJobs() async{
// final res = await http.get(url);
// if (res.statusCode == 200) {
//   List<dynamic> body = jsonDecode(res.body);
// List<Jobs> jobs = body.map((dynamic item)=>Jobs.fromJson (item)).toList();
// return jobs;
// }else{
//   throw 'cant get jbs';
// }

//  }

// }