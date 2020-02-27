import 'package:flutter/material.dart';
import 'package:peoplejobs/models/jobsmodel.dart';
import 'package:peoplejobs/services/jobshttp.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HttpService httpService = HttpService();
  
// List _jobs =[];
// Future<List<Jobs>> _getJobs() async{
// final  String url ="https://reqres.in/api/users";
//  http.get(url).then((res){
//    if (res.statusCode == 200) {
//      Map jobs = jsonDecode(res.body);
     
//   setState(() {
//     _jobs = jobs["data"];
//   });
//    }
  
// });
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("jobs"),
        actions: <Widget>[
         IconButton(icon: Icon(Icons.refresh), onPressed: null)
        ],
      ),
      body: FutureBuilder(
        future: httpService.getJobs(),
        builder: ( context, snapshot){
          if (snapshot.hasData) {
           
            return 
              
              ListTile(
                title: Text(snapshot.data.first_name),
                subtitle: Text(snapshot.data.email),
                leading: Image.network(snapshot.data.avatar),
              );
          
            
          
            
          }else{
            return CircularProgressIndicator();
          }
        }
        ),
         
      //  _jobs.length == 0 ? Center(child:Text("No data")) : ListView.builder(
      //    itemCount: _jobs.length,
      //    itemBuilder: (context, index){
      //      return ListTile(
      //        title: Text(_jobs[index]['first_name']),
      //        subtitle: Text(_jobs[index]['email']),
      //        leading: Image.network(_jobs[index]['avatar']),
      //      );
      //    }
         
      //    ),
        
      //FutureBuilder(
      //   future: httpService.getJobs(),
      //   builder: ( context, snapshot){
      //     if (snapshot.hasData) {
      //       List<Jobs> jobs = snapshot.data;
      //       return ListView(
      //         children:   jobs.map((Jobs jobs)=>
      //         ListTile(
      //           title: Text(jobs.first_name),
      //           subtitle: Text(jobs.email),
      //           leading: Image.network(jobs.avatar),
      //         )
      //         ).toList()
      //       );
          
            
      //     }else{
      //       return CircularProgressIndicator();
      //     }
      //   }
      //   ),
    );
  }
}
