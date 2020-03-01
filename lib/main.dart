import 'package:flutter/material.dart';
import 'package:peoplejobs/models/jobsmodel.dart';

import 'services/jobshttp.dart';



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


  Future<Jobs> futureJob;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureJob = HttpService.getJobs();
    print("here");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("jobs"),
        actions: <Widget>[
         IconButton(icon: Icon(Icons.refresh), onPressed: null)
        ],
      ),
      body: FutureBuilder<Jobs>(
        future: futureJob,
        builder: ( context, snapshot){
          if (snapshot.hasData) {

            return ListView.builder(itemBuilder: (context,index){
              return ListTile(
                title: Text(snapshot.data.data[index].first_name+" "+snapshot.data.data[index].last_name),
                subtitle: Text(snapshot.data.data[index].email),
                leading: ClipOval(child: Image.network(snapshot.data.data[index].avatar)),
              );
            },
            itemCount: snapshot.data.data.length,);
              

          
            
          
            
          }else if(snapshot.hasError){
            print('${snapshot.error}');
            return Text('${snapshot.error}');
          }
          // By default, show a loading spinner.
          return CircularProgressIndicator();
        }
        ),

    );
  }
}
